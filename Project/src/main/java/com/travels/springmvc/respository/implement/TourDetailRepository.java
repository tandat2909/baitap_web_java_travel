package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Tourdetails;
import com.travels.springmvc.respository.ITourDetailRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class TourDetailRepository extends GenericsRepository<Tourdetails,String> implements ITourDetailRepository {
}
