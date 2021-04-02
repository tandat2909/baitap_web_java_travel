package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Ages;
import com.travels.springmvc.respository.IAgesRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class AgesRepository extends GenericsRepository<Ages,String> implements IAgesRepository {
}
