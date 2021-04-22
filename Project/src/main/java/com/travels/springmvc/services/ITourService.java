package com.travels.springmvc.services;

import com.travels.springmvc.pojo.Province;
import com.travels.springmvc.pojo.Tour;

import java.util.List;

public interface ITourService extends IGenericsService<Tour,String> {
    List<Tour> searchTourByProvince(String provinceId);
    List<Tour> searchTourByProvince(Province province);
    List<Tour> SearchTourByName(String kw) throws Exception;
    List<Tour> searchTourByLandMarkId(String landMarkId);
    List<Tour> searchTourByLandMarkName(String landMarkName) throws  Exception;
    List<Tour> searchTourByProvinceName(String provinceName) throws Exception;

}
