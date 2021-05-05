package com.travels.springmvc.services;

import com.travels.springmvc.modelView.TourView;
import com.travels.springmvc.pojo.Province;
import com.travels.springmvc.pojo.Tour;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

public interface ITourService extends IGenericsService<Tour,String> {
    List<Tour> searchTourByProvince(String provinceId);
    List<Tour> searchTourByProvince(Province province);
    List<Tour> SearchTourByName(String kw) throws Exception;
    List<Tour> searchTourByLandMarkId(String landMarkId);
    List<Tour> searchTourByLandMarkName(String landMarkName) throws  Exception;
    List<Tour> searchTourByProvinceName(String provinceName) throws Exception;
    List<Tour> searchTourByDate(Date date) throws Exception;
    List<Tour> searchTourByDate(Date fromDate, Date toDate);
    List<Tour> searchTourByPrice(BigDecimal fromPrice,BigDecimal toPrice) throws Exception;

    void add(TourView tourView) throws Exception;

}
