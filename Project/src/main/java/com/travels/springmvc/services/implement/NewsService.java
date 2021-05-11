package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.pojo.News;
import com.travels.springmvc.respository.INewsRepository;
import com.travels.springmvc.services.INewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class NewsService extends GenericsService<News,String> implements INewsService {
    @Autowired
    INewsRepository newsRepository;
    @Override
    public  void add(News news) throws Exception {
        newsRepository.isvalid(news);
        newsRepository.save(news);
    }
    @Override
    public void update(News news) throws Exception  {
        newsRepository.isvalid(news);
        super.update(news);
    }
}
