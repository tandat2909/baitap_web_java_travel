package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Pricedetails;
import com.travels.springmvc.respository.IPriceDetailRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class PriceDetailRepository extends GenericsRepository<Pricedetails,String> implements IPriceDetailRepository {
}
