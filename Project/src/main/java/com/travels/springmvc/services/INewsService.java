package com.travels.springmvc.services;

import com.travels.springmvc.pojo.News;


public interface INewsService extends IGenericsService<News,String>{
    @Override
    void add(News news) throws Exception;
}
