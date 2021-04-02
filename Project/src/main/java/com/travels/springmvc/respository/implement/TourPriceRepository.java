package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Tourprices;
import com.travels.springmvc.respository.ITourPriceRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class TourPriceRepository extends GenericsRepository<Tourprices,String> implements ITourPriceRepository {
}
