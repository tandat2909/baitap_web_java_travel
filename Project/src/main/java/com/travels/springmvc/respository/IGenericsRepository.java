package com.travels.springmvc.respository;

import java.util.List;


public interface IGenericsRepository <T,K> {
    List<T> getAll();
    boolean saveOrUpdate(T obj);
    boolean remove(T obj);
    public void update(T entity) ;
    boolean add(T obj);
    T getElementById(K key);
}
