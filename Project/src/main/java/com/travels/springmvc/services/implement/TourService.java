package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Province;
import com.travels.springmvc.pojo.Tour;
import com.travels.springmvc.respository.IBookingDetailRepository;
import com.travels.springmvc.respository.ITourRepository;
import com.travels.springmvc.services.ITourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class TourService extends GenericsService<Tour,String> implements ITourService {

    @Autowired
    ITourRepository tourRepository;
    @Autowired
    IBookingDetailRepository bookingDetailRepository;

    @Override
    public List<Tour> searchTourByProvince(String provinceId) {
        return tourRepository.searchTourByProvince(provinceId);
    }

    @Override
    public List<Tour> searchTourByProvince(Province province) {
        return tourRepository.searchTourByProvince(province.getProvinceId());
    }

    @Override
    public List<Tour> SearchTourByName(String kw) throws Exception {
        if(kw == null || kw.isEmpty() || kw.trim().length() < 1)
            throw new NullPointerException("Từ khóa Không được để trống");

        try {
            return SearchKeyWordOnField(kw,Tour.class.getDeclaredField("tourName"));
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
        if(landMarkName == null || landMarkName.isEmpty() || landMarkName.trim().length() < 1)
            throw new NullPointerException("Tên địa danh không được để trống");
        return tourRepository.searchTourByLandMarkName(landMarkName);
    }

    @Override
    public List<Tour> searchTourByProvinceName(String provinceName) throws Exception {
        if(provinceName == null || provinceName.isEmpty() || provinceName.trim().length() < 1)
            throw new NullPointerException("Tên tỉnh thành không được để trống");
        return tourRepository.searchTourByProvinceName(provinceName);
    }

    @Override
    public void removeTour(String tourId) throws Exception{
        tourRepository.removeTour(tourId);
    }

}
