package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Landmarks;
import com.travels.springmvc.respository.ILandMarkRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class LandMarkRepository extends GenericsRepository<Landmarks,String> implements ILandMarkRepository {
}
