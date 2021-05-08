package com.travels.springmvc.services.implement;


import com.travels.springmvc.pojo.Tourprices;
import com.travels.springmvc.services.ITourPricesService;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class TourPricesService extends GenericsService<Tourprices,String> implements ITourPricesService {
}
