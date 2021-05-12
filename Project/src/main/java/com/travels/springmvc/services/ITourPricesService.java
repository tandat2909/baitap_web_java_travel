package com.travels.springmvc.services;


import com.travels.springmvc.pojo.Tourprices;

import java.math.BigDecimal;

public interface ITourPricesService extends IGenericsService<Tourprices,String>{
    BigDecimal getPriceByAgeTourId(String AgeId, String tourId);
}
