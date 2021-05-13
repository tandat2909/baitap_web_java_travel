package com.travels.springmvc.services.implement;

import com.travels.springmvc.modelView.TourView;
import com.travels.springmvc.pojo.Contents;
import com.travels.springmvc.pojo.Province;
import com.travels.springmvc.pojo.Tour;

import com.travels.springmvc.respository.ITourRepository;
import com.travels.springmvc.services.ITourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

@Service
@Transactional
public class TourService extends GenericsService<Tour,String> implements ITourService {

    @Autowired
    ITourRepository tourRepository;




    @Override
    public List<Tour> searchTourByProvince(String provinceId) {
        return tourRepository.searchTourByProvince(provinceId);
    }

    @Override
    public List<Tour> searchAll(String province, String landMark, BigDecimal fromPrice, BigDecimal toPrice, Date fromDate, Date toDate){

        return tourRepository.searchAll(province, landMark, fromPrice, toPrice, fromDate, toDate);
    }

    @Override
    public List<Tour> searchTourByProvince(Province province) {
        return tourRepository.searchTourByProvince(province);
    }

    @Override
    public List<Tour> SearchTourByName(String kw) throws Exception {
        if (kw == null || kw.isEmpty() || kw.trim().length() < 1)
            throw new NullPointerException("Từ khóa Không được để trống");

        try {
            return SearchKeyWordOnField(kw, Tour.class.getDeclaredField("tourName"));
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
            throw new Exception("lỗi tìm kiếm tour");
        }
    }

    @Override
    public List<Tour> searchTourByLandMarkId(String landMarkId) {
        return tourRepository.searchTourByLandMarkId(landMarkId);
    }

    @Override
    public List<Tour> searchTourByLandMarkName(String landMarkName) throws Exception {
        if (landMarkName == null || landMarkName.isEmpty() || landMarkName.trim().length() < 1)
            throw new NullPointerException("Tên địa danh không được để trống");
        return tourRepository.searchTourByLandMarkName(landMarkName);
    }

    @Override
    public List<Tour> searchTourByProvinceName(String provinceName) throws Exception {
        if (provinceName == null || provinceName.isEmpty() || provinceName.trim().length() < 1)
            throw new NullPointerException("Tên tỉnh thành không được để trống");
        return tourRepository.searchTourByProvinceName(provinceName);
    }

    @Override
    public List<Tour> searchTourByDate(Date date) throws Exception {

        return tourRepository.searchTourByDate(date);

    }

    @Override
    public List<Tour> searchTourByDate(Date fromDate, Date toDate) {
        return tourRepository.searchTourByDate(fromDate, toDate);
    }

    @Override
    public List<Tour> searchTourByPrice(BigDecimal fromPrice, BigDecimal toPrice) throws Exception {
        return tourRepository.searchTourByPrice(fromPrice, toPrice);
    }



    @Override
    public void addTour(Tour tour) throws Exception{

        tourRepository.addTour(tour);
    }
    @Override
    public void updateTour(Tour tour) throws Exception{
        try {
            if (tour.getContent() != null && !tour.getContent().isEmpty()) {
                tourRepository.update(tour);
                return;
            }
            throw new Exception("lỗi content");
        } catch (Exception ex){
            throw new Exception(ex.getMessage());
        }

    }

    public boolean checkEmpty(String chuoi) throws Exception{
        try {
            if(chuoi == null || chuoi.isEmpty()) {
                return true;
            }
            return false;

        } catch (Exception ex){
            throw new Exception("chuỗi rỗng");
        }

    }

    @Override
    public void update(TourView tourView) throws Exception {

        tourRepository.update(tourView);

    }


    public void add(TourView tourView) throws Exception {
        tourRepository.add(tourView);
    }

}
