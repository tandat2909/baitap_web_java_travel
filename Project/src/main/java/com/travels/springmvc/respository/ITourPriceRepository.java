package com.travels.springmvc.respository;

import com.travels.springmvc.pojo.Pricedetails;
import com.travels.springmvc.pojo.Tour;
import com.travels.springmvc.pojo.Tourprices;

import java.math.BigDecimal;

public interface ITourPriceRepository  extends IGenericsRepository<Tourprices,String> {
    BigDecimal getPriceByAgeTourId(String AgeId, String tourId);
    Tourprices getTourPriceByAgeTourId(String ageId,String tourId);
}
