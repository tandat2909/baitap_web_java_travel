package com.travels.springmvc.respository.implement;

import com.travels.springmvc.modelView.TourView;
import com.travels.springmvc.pojo.*;
import com.travels.springmvc.respository.*;

import com.travels.springmvc.respository.Enum.EAges;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Transactional
@Repository
public class TourRepository extends GenericsRepository<Tour, String> implements ITourRepository {

    @Autowired
    IProvinceRepository provinceRepository;
    @Autowired
    ILandMarkRepository landMarkRepository;
    @Autowired
    ITourPriceRepository tourPriceRepository;
    @Autowired
    IContentsRepository contentsRepository;

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
        } catch (NoSuchFieldException e) {
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

    @Override
    public List<Tour> searchTourByDate(Date date) throws Exception {
        date.setSeconds(0);
        date.setMinutes(0);
        date.setHours(0);
        Date to = new Date(date.getTime());
        to.setSeconds(59);
        to.setMinutes(59);
        to.setHours(23);
        return getBetweenDate(date, to, Tour.class.getDeclaredField("startDay"));

    }

    @Override
    public List<Tour> searchTourByDate(Date fromDate, Date toDate) {
        try {
            return getBetweenDate(fromDate, toDate, Tour.class.getDeclaredField("startDay"));
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
            return null;
        } catch (Exception exception) {
            exception.printStackTrace();
            return null;
        }
    }

    @Override
    public List<Tour> searchTourByPrice(BigDecimal fromPrice, BigDecimal toPrice) throws Exception {
        try {
            return getBetweenValue(fromPrice, toPrice, Tour.class.getDeclaredField("price"));
        } catch (Exception exception) {
            throw new Exception("Lỗi tìm kiếm tour theo giá");
        }
    }

    @Override
    public void add(TourView tourView) throws Exception {
        try {
            if (tourView == null) throw new Exception("Lỗi không thể thêm tour");
            Tour tour = tourView.getTour();
            List<Tourprices> tourprices = tourView.getTourprices();
            List<Contents> contents = tourView.getListContens();

            tour.setTourId(UUID.randomUUID().toString());
            tour.setContent(contents.get(0).getContent());
            tourprices.forEach(i -> {
                if (i.getAgeId().equals(EAges.getId(EAges.NGUOILON))) {
                    tour.setPrice(i.getPrice());
                }
                i.setTourId(tour.getTourId());
            });

            contents.forEach(i -> {
                i.setContentId(UUID.randomUUID().toString());
                i.setTourID(tour.getTourId());
            });

            save(tour);
            tourPriceRepository.saveAll(tourprices);
            contentsRepository.saveAll(contents);

        } catch (Exception ex) {
            throw new Exception(ex.getMessage());
        }

    }


}
