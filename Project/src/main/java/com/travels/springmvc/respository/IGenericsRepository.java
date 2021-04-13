package com.travels.springmvc.respository;

import org.apache.commons.lang.NullArgumentException;

import java.lang.reflect.Field;
import java.util.List;


public interface IGenericsRepository <T,K> {
    List<T> getAll();
    void saveOrUpdate(T obj)throws NullArgumentException;
    void remove(T obj) throws NullArgumentException;
    void update(T entity) throws NullArgumentException;
    void save(T obj) throws NullArgumentException;
    void save(T obj, boolean GeneratedValueId);
    T getElementById(K key);
    List<T> getElementsByKeyWordOnField(String kw, Field field);


}
