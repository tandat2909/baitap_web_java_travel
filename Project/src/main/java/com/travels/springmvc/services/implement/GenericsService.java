package com.travels.springmvc.services.implement;

import com.travels.springmvc.respository.IGenericsRepository;
import com.travels.springmvc.services.IGenericsService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class GenericsService<T,K> implements IGenericsService<T,K> {

    @Autowired
    IGenericsRepository<T,K> genericsRepository;

    @Override
    public List<T> getAll() {
        return genericsRepository.getAll();
    }

    @Override
    public boolean saveOrUpdate(T obj) {
        return genericsRepository.saveOrUpdate(obj);
    }

    @Override
    public boolean remove(T obj) {
        return genericsRepository.remove(obj);
    }

    @Override
    public void update(T entity) {
        genericsRepository.update(entity);
    }

    @Override
    public boolean add(T obj) {
        return genericsRepository.add(obj);
    }


    @Override
    public T getElementById(K key) {
        return genericsRepository.getElementById(key);
    }
}
