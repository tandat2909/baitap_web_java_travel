package com.travels.springmvc.services;

import java.lang.reflect.Field;
import java.util.Collection;
import java.util.Date;
import java.util.List;

public interface IGenericsService<T, K> {

    List<T> getAll();

    void saveOrUpdate(T obj);

    void remove(T obj) throws Exception;

    void update(T entity);

    /**
     *
     *  Muốn tự động tạo field ID type UUID set value GeneratedValueId = true và field có gắn annotation @GeneratedValueUUID
     *  <br>
     *  Khi đối tượng tạo mới đã gán id thì set value GeneratedValueId = False
     */
    void add(T obj,boolean GeneratedValueId);
    void add(T obj) throws Exception;
    void addAll(Collection<T> obj) throws Exception;
    T getElementById(K key);
    List<T> getElementsByKeyWordOnField(String kw, Field field);
    List<T> SearchKeyWordOnField(String kw, Field field) throws Exception;
    List<T> getBetweenValue(Object from, Object to, Field field) throws Exception;
    List<T> getBetweenDate(Date fromDate, Date toDate, Field field) throws Exception;
}
