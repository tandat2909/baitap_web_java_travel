package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Sysconfig;
import com.travels.springmvc.respository.ISysConfigRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class SysConfigRepository extends GenericsRepository<Sysconfig,String> implements ISysConfigRepository {
}
