package com.travels.springmvc.services.implement;

import com.travels.springmvc.modelView.TourView;
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
public class TourService extends GenericsService<Tour, String> implements ITourService {

    @Autowired
    ITourRepository tourRepository;

    @Override
    public List<Tour> searchTourByProvince(String provinceId) {
        return tourRepository.searchTourByProvince(provinceId);
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


    public void add(TourView tourView) throws Exception {
        tourRepository.add(tourView);
    }

}
