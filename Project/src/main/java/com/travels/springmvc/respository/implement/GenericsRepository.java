package com.travels.springmvc.respository.implement;

import com.travels.springmvc.Annotation.GeneratedValueUUID;
import com.travels.springmvc.respository.IGenericsRepository;
import org.apache.commons.lang.NullArgumentException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.management.Query;
import javax.persistence.Id;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;
import java.util.UUID;


@Transactional
@Repository
abstract class GenericsRepository<T, K extends Serializable> implements IGenericsRepository<T, K> {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    protected Session currentSession() {
        return sessionFactory.getObject().getCurrentSession();
    }

    protected void setValueFieldId(Object obj) throws IllegalAccessException {
        for (Field field : obj.getClass().getDeclaredFields()) {
            if (field.isAnnotationPresent(Id.class) && field.isAnnotationPresent(GeneratedValueUUID.class)) {
                if (field.getAnnotation(GeneratedValueUUID.class).status()) {
                    field.setAccessible(true);
                    field.set(obj, UUID.randomUUID().toString());
                }
                break;
            }
        }
    }



    protected Class getClassType() {
        Type t = getClass().getGenericSuperclass();
        ParameterizedType pt = (ParameterizedType) t;
        return (Class) pt.getActualTypeArguments()[0];
    }

    @Transactional
    @Override
    public List<T> getAll() {
        return currentSession().createQuery("from " + getClassType().getSimpleName()).getResultList();

    }

    @Transactional
    @Override
    public void saveOrUpdate(T obj) throws NullArgumentException {
        if (obj == null) {
            throw new NullPointerException("GenericsRepository -f saveOrUpdate -p obj is null");
        }
        currentSession().saveOrUpdate(obj);

    }

    @Transactional
    @Override
    public void remove(T obj) {
        if (obj == null) {
            throw new NullArgumentException("GenericsRepository -f remove -p obj is null");
        }
        currentSession().delete(obj);
    }

    @Transactional
    @Override
    public void update(T obj) {
        if (obj == null) {
            throw new NullArgumentException("GenericsRepository -f update -p obj is null");
        }
        currentSession().update(obj);

    }

    @Override
    @Transactional
    public void save(T obj) {

        if (obj == null) {
            throw new NullArgumentException("GenericsRepository -f save -p obj is null");
        }
        currentSession().save(obj);

    }
    @Override
    @Transactional
    public void save(T obj, boolean GeneratedValueId) {
        if(GeneratedValueId) {
            try {
                setValueFieldId(obj);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
        currentSession().save(obj);
    }

    @Transactional
    @Override
    public T getElementById(K key) {
        return (T) currentSession().get(getClassType(), key);
    }

    @Transactional
    @Override
    public List<T> getElementsByKeyWordOnField(String kw, Field field) {
        String hsql = String.format("from %s where %s like :kw",getClassType().getSimpleName(),field.getName());
        List<T> list = currentSession().createQuery(hsql).setParameter("kw",kw).getResultList();
        return list;
    }
}
