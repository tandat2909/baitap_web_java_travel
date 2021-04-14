package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.respository.IGenericsRepository;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.List;

@Repository
@Transactional
class GenericsRepository<T, K extends Serializable> implements IGenericsRepository<T, K> {

    @Autowired
    private LocalSessionFactoryBean sessionFactory;

    protected Session currentSession() {
        return sessionFactory.getObject().getCurrentSession();
    }

    protected Class getClassType(){
        Type t = getClass().getGenericSuperclass();
        ParameterizedType pt = (ParameterizedType) t;
        return  (Class) pt.getActualTypeArguments()[0];
    }


    @Override
    public List<T> getAll() {
        return  currentSession().createQuery("from " + getClassType().getSimpleName()).getResultList();

    }

    @Override
    public boolean saveOrUpdate(T obj) {
        try{
            currentSession().saveOrUpdate(obj);
            return true;
        } catch (HibernateException e) {
            return false;
        }
    }

    @Override
    public boolean remove(T obj) {
        try{
            currentSession().delete(obj);
            return true;
        } catch (HibernateException e) {
            return false;
        }
    }

    @Override
    public void update(T entity) {
        currentSession().update(entity);
    }

    @Override
    public boolean add(T obj) {
        Customer cus = new Customer();
        return false;
    }

    @Transactional
    @Override
    public T getElementById(K key) {
        return (T) currentSession().get(getClassType(), key);
    }
}
