package com.travels.springmvc.respository.implement;

import com.travels.springmvc.Annotation.GeneratedValueUUID;
import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.respository.IGenericsRepository;
import org.apache.commons.lang.NullArgumentException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Id;
import javax.persistence.criteria.*;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.UUID;


@Transactional
@Repository
public abstract class GenericsRepository<T, K extends Serializable> implements IGenericsRepository<T, K> {

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
    public void remove(T obj) throws Exception {
        if (obj == null) {
            throw new NullArgumentException("GenericsRepository -f remove -p obj is null");
        }
        currentSession().delete(obj);
    }

    @Transactional
    @Override
    public void update(T obj)  {
        if (obj == null) {
            throw new NullArgumentException("GenericsRepository -f update -p obj is null");
        }
        currentSession().update(obj);

    }

    @Override
    @Transactional
    public void save(T obj) throws Exception {

        if (obj == null) {
            throw new NullArgumentException("GenericsRepository -f save -p obj is null");
        }
        currentSession().save(obj);

    }

    @Override
    @Transactional
    public void save(T obj, boolean GeneratedValueId) {
        if (GeneratedValueId) {
            try {
                setValueFieldId(obj);
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            }
        }
        currentSession().save(obj);
    }

    @Override
    public void saveAll(Collection<T> listObject) throws Exception {
        try {

            listObject.forEach(i -> currentSession().save(i));

        } catch (Exception e) {
            System.err.println("========Lỗi Repository saveAll()==========");
            currentSession().getTransaction().rollback();
            throw new Exception("Lỗi lưu thông tin");
        }

    }

    @Transactional(propagation = Propagation.REQUIRED)
    @Override
    public T getElementById(K key) {
        return (T) currentSession().get(getClassType(), key);
    }

    @Transactional
    @Override
    public List<T> getElementsByKeyWordOnField(String kw, Field field) {

        String hsql = String.format("from %s where %s like :kw", getClassType().getSimpleName(), field.getName());
        List<T> list = currentSession().createQuery(hsql).setParameter("kw", kw).getResultList();
        return list;
    }

    public List<T> executionCriteriaBase(QueryCriteria c, Object... args) throws Exception {
        CriteriaBuilder cb = currentSession().getCriteriaBuilder();
        CriteriaQuery<T> cr = cb.createQuery(getClassType());
        Root<T> root = cr.from(getClassType());
        cr.select(root);
        cr = c.getWhere(cb, cr, root, args);
        return currentSession().createQuery(cr).getResultList();
    }

    @Transactional
    @Override
    public List<T> SearchKeyWordOnField(String kw, Field field) throws Exception {
        return executionCriteriaBase((builder, query, root, args) -> {
            Predicate search = builder.like(root.get((String) args[1]).as(String.class), String.format("%%%s%%", (String) args[0]));
            query.where(search);
            return query;
        }, kw, field.getName());
    }


    @Transactional
    @Override
    public List<T> getBetweenValue(Object from, Object to, Field field) throws Exception {

        BigDecimal a, b;
        if ((from == null && to == null) || field == null) {
            throw new NullPointerException("Điều kiện không hợp lệ");
        }
        try {
            a = new BigDecimal(String.valueOf(from == null && to != null ? 0 : from));
            b = new BigDecimal(String.valueOf(to == null ? Long.MAX_VALUE : to));
        } catch (NumberFormatException numberFormat) {
            throw new Exception("vui lòng nhập số không nhập chữ và ký tự đặc biệt");
        }

        if (b.compareTo(a) < 0) {
            throw new Exception("giá trị sau lớn hơn giá trị trước");
        }
        return executionCriteriaBase((builder, query, root, args) -> {
            Predicate p1 = builder.greaterThanOrEqualTo(root.get(field.getName()), a);
            Predicate p2 = builder.lessThanOrEqualTo(root.get(field.getName()), b);
            query.where(builder.and(p1, p2));
            return query;
        });
    }

    @Override
    public List<T> getBetweenDate(Date fromDate, Date toDate, Field field) throws Exception {
        if (field == null || !field.getType().equals(Date.class)) {
            throw new Exception("Chỉ định field tìm kiếm không hợp lệ");
        }
        if (fromDate == null) {
            throw new Exception("From date không được để trống");
        }

        toDate = toDate == null ? new Date() : toDate;

        return executionCriteriaBase((builder, query, root, args) -> {
//            Predicate p1 = builder.greaterThanOrEqualTo(, fromDate);
            System.out.println("vô hàm sau khi check" + (Date) args[0] + " " + fromDate);
//            Predicate p2 = builder.lessThanOrEqualTo(root.get(field.getName()), );
            query.where(builder.between(root.get(field.getName()).as(Date.class), fromDate, (Date) args[0]));
            return query;
        }, toDate);
    }

    protected List<T> Thongke(QueryCriteria c, Object... args) throws Exception {
        CriteriaBuilder cb = currentSession().getCriteriaBuilder();
        CriteriaQuery<Booking> cr = cb.createQuery(getClassType());
        System.out.println(getClassType());
        Root<Booking> root = cr.from(getClassType());
        cr.select(root);
        cr = c.getWhere(cb, cr, root, args);
        System.out.println("=====");

        return (List<T>) currentSession().createQuery(cr).getResultList();
    }
}

interface QueryCriteria {
    CriteriaQuery getWhere(CriteriaBuilder builder, CriteriaQuery query, Root root, Object... args) throws Exception;
}
