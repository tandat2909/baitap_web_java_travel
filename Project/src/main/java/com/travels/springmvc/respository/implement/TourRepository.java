package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Landmarks;
import com.travels.springmvc.pojo.Province;
import com.travels.springmvc.pojo.Tour;
import com.travels.springmvc.respository.ILandMarkRepository;
import com.travels.springmvc.respository.IProvinceRepository;
import com.travels.springmvc.respository.ITourRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Transactional
@Repository
public class TourRepository extends GenericsRepository<Tour, String> implements ITourRepository {

    @Autowired
    IProvinceRepository provinceRepository;
    @Autowired
    ILandMarkRepository landMarkRepository;

    @Override
    public List<Tour> searchTourByProvince(String provinceId) {
        List<Tour> tours = currentSession().createSQLQuery("CALL getTourByProvinceId(:id)").addEntity(Tour.class).setParameter("id", provinceId).getResultList();
        return tours;
    }

    @Override
    public List<Tour> searchTourByProvince(Province province) {
        return searchTourByProvince(province.getProvinceId());
    }

    @Override
    public List<Tour> searchTourByLandMarkId(String landMarkId) {

        return (List<Tour>) landMarkRepository.getElementById(landMarkId).getTours();
    }

    @Override
    public List<Tour> searchTourByLandMarkName(String landMarkName) throws Exception {
        List<Tour> tourList = new ArrayList<>();
        try {
            landMarkRepository.SearchKeyWordOnField(landMarkName, Landmarks.class.getDeclaredField("landMarkName"))
                    .forEach(i -> tourList.addAll(i.getTours()));
        }catch (NoSuchFieldException e){
            e.printStackTrace();
            throw new Exception("Lỗi tìm kiếm tour");
        }

        return tourList;
    }

    @Override
    public List<Tour> searchTourByProvinceName(String provinceName) {
        List<Tour> tours = currentSession().createSQLQuery("CALL getTourByProvinceId(:provinceName)").addEntity(Tour.class).setParameter("provinceName", provinceName).getResultList();
        return tours;
    }


}
