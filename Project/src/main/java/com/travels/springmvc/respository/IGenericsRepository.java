package com.travels.springmvc.respository;

import org.apache.commons.lang.NullArgumentException;

import java.lang.reflect.Field;
import java.util.Date;
import java.util.List;


public interface IGenericsRepository <T,K> {
    List<T> getAll();
    void saveOrUpdate(T obj)throws NullArgumentException;
    void remove(T obj) throws NullArgumentException;
    void update(T entity) throws NullArgumentException;
    void save(T obj) throws Exception;
    void save(T obj, boolean GeneratedValueId);
    T getElementById(K key);
    List<T> getElementsByKeyWordOnField(String kw, Field field);
    List<T> SearchKeyWordOnField(String kw, Field field) throws Exception;

    /**
     *
     * if ( from == null && to != null ) from = 0
     * <br>
     * if ( to == null && from != null ) to = Long.MAX_VALUE
     * @param from is number
     * @param to is number
     * @param field trường dữ liệu trong Class pojo type field và value là kiểu số
     * @return List<<b>T</b>>
     * @throws Exception
     *<br>
     * when (from == null && to == null) || field == null
     * <br>
     * and from, to is not number
     *
     */
    List<T> getBetweenValue(Object from, Object to, Field field) throws Exception;
    List<T> getBetweenDate(Date fromDate, Date toDate, Field field) throws Exception;
}
