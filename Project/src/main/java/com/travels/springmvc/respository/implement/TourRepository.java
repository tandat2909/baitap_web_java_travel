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
    public List<Tour> searchAll(String province, String landMark, BigDecimal fromPrice, BigDecimal toPrice, Date fromDate, Date toDate){
        List<Tour> tours = currentSession().createSQLQuery("CALL searchTour(:province, :landMark, :fromPrice, :toPrice, :fromDate, :toDate)").addEntity(Tour.class).setParameter("province", province).setParameter("landMark", landMark).setParameter("fromPrice", fromPrice).setParameter("toPrice", toPrice).setParameter("fromDate", fromDate).setParameter("toDate", toDate).getResultList();
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

    @Override
    public List<Tour> searchTourByDate(Date date) throws Exception
    {
        date.setSeconds(0);
        date.setMinutes(0);
        date.setHours(0);
        Date to = new Date(date.getTime());
        to.setSeconds(59);
        to.setMinutes(59);
        to.setHours(23);
        return getBetweenDate(date,to,Tour.class.getDeclaredField("startDay"));

    }

    @Override
    public List<Tour> searchTourByDate(Date fromDate, Date toDate) {
        try {
            return getBetweenDate(fromDate,toDate,Tour.class.getDeclaredField("startDay"));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public List<Tour> searchTourByPrice(BigDecimal fromPrice, BigDecimal toPrice) throws Exception {
        try {
            return getBetweenValue(fromPrice,toPrice,Tour.class.getDeclaredField("price"));
        } catch (Exception exception) {
            throw new Exception("Lỗi tìm kiếm tour theo giá");
        }
    }

    @Override
    public void add(TourView tourView) throws Exception {
        try {
            if (tourView == null) throw new Exception("Lỗi không thể thêm tour");
            Tour tour = tourView.getTour();
            if(tour.getStartDay().getTime() > tour.getEndDay().getTime()) throw new Exception("Ngày Đi nhỏ hơn ngày Về");
            if(tour.getTourName() == null || tour.getTourName().isBlank()) throw new Exception("Tên tour không được để trống");
            List<Tourprices> tourprices = tourView.getTourprices();
            List<Contents> contents = tourView.getListContens();
            tour.setTourId(UUID.randomUUID().toString());
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


    @Override
    public void  addTour(Tour tour) throws Exception{
        try{
            if(tour.getTourName() == null || tour.getTourName().isEmpty())
            {
                throw new Exception("lỗi để trống tour");
            }
            else{
                currentSession().save(tour);
            }
        } catch (Exception ex){
            throw new Exception(ex.getMessage());
        }
    }
//    @Override
//    public boolean checkContentInTour(Tour tour) {
////        List<Booking> result = currentSession().createQuery("From Tour where tourName = :i")
////                .setParameter("i", tour.getTourName()).getResultList();
//        if (tour.getContent() != null || !tour.getContent().isEmpty())
//            return true;
//        return false;
//    }
}
