package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Province;
import com.travels.springmvc.respository.IProvinceRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class ProvinceRepository extends GenericsRepository<Province,String> implements IProvinceRepository {
}
