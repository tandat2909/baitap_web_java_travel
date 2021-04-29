package com.travels.springmvc.services.implement;


import com.travels.springmvc.Annotation.GeneratedValueUUID;
import com.travels.springmvc.respository.IGenericsRepository;
import com.travels.springmvc.services.IGenericsService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Id;
import java.lang.reflect.Field;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Service
@Transactional
public abstract class GenericsService<T, K> implements IGenericsService<T, K> {

    @Autowired
    IGenericsRepository<T, K> genericsRepository;

    @Override
    public List<T> getAll() {
        return genericsRepository.getAll();
    }

    @Override
    public void saveOrUpdate(T obj) {
        genericsRepository.saveOrUpdate(obj);
    }

    @Override
    public void remove(T obj) {
        genericsRepository.remove(obj);
    }

    @Override
    public void update(T entity) {
        genericsRepository.update(entity);
    }

    @Override
    public void add(T obj, boolean GeneratedValueId) {

        genericsRepository.save(obj,GeneratedValueId);
    }
    @Override
    public void add(T obj){

        genericsRepository.save(obj);
    }


    @Override
    public T getElementById(K key) {
        return genericsRepository.getElementById(key);
    }

    @Override
    public List<T> getElementsByKeyWordOnField(String kw, Field field) {
        return genericsRepository.getElementsByKeyWordOnField(kw,field);
    }
    @Override
    public List<T> SearchKeyWordOnField(String kw, Field field) throws Exception {
        return genericsRepository.SearchKeyWordOnField(kw,field);
    }

    @Override
    public List<T> getBetweenValue(Object from, Object to, Field field) throws Exception{
        return genericsRepository.getBetweenValue(from,to,field);
    }

    @Override
    public List<T> getBetweenDate(Date fromDate, Date toDate, Field field) throws Exception{
        return genericsRepository.getBetweenDate(fromDate,toDate,field);
    }

}
