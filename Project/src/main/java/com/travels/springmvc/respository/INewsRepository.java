package com.travels.springmvc.respository;

import com.travels.springmvc.pojo.News;


public interface INewsRepository extends IGenericsRepository<News,String>{
    @Override
    void save(News obj) throws Exception;

}