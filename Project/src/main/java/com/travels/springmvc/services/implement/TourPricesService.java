package com.travels.springmvc.services.implement;


import com.travels.springmvc.pojo.Tourprices;
import com.travels.springmvc.respository.ITourPriceRepository;
import com.travels.springmvc.services.ITourPricesService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;

@Service
@Transactional
public class TourPricesService extends GenericsService<Tourprices,String> implements ITourPricesService {
    @Autowired
    ITourPriceRepository tourPriceRepository;
    @Override
    public BigDecimal getPriceByAgeTourId(String AgeId, String tourId) {
        return tourPriceRepository.getPriceByAgeTourId(AgeId,tourId);
    }
}
