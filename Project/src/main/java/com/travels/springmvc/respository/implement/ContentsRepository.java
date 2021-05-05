package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Contents;
import com.travels.springmvc.respository.IContentsRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class ContentsRepository extends GenericsRepository<Contents,String> implements IContentsRepository {
}
