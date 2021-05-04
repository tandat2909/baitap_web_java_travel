package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.News;
import com.travels.springmvc.services.INewsService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class NewsService extends GenericsService<News,String> implements INewsService {
}
