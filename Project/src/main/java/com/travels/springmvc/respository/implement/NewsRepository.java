package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.News;
import com.travels.springmvc.respository.INewsRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class NewsRepository extends GenericsRepository<News, String> implements INewsRepository {
}
