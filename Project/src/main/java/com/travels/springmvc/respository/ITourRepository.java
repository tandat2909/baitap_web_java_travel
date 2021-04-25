package com.travels.springmvc.respository;

import com.travels.springmvc.pojo.Province;
import com.travels.springmvc.pojo.Tour;

import java.util.List;

public interface ITourRepository extends IGenericsRepository<Tour,String> {

    List<Tour> searchTourByProvince(String provinceId);
    List<Tour> searchTourByProvince(Province province);
    List<Tour> searchTourByLandMarkId(String landMarkId);
    List<Tour> searchTourByLandMarkName(String landMarkName) throws Exception;
    List<Tour> searchTourByProvinceName(String provinceName);

    void removeTour(String tourId) throws Exception;
    void addTour(Tour tour);
}
