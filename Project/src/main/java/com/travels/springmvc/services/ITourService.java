package com.travels.springmvc.services;

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
    List<Tour> searchAll(String province, String landMark, BigDecimal fromPrice, BigDecimal toPrice, Date fromDate, Date toDate);


    void removeTour(String tourId) throws Exception;
    void addTour(Tour tour) throws Exception;
    void updateTour(Tour tour) throws Exception;
    public boolean checkEmpty(String chuoi) throws Exception;
}
