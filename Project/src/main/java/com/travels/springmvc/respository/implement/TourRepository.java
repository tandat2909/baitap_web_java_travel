package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.*;
import com.travels.springmvc.respository.IBookingDetailRepository;
import com.travels.springmvc.respository.ILandMarkRepository;
import com.travels.springmvc.respository.IProvinceRepository;
import com.travels.springmvc.respository.ITourRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;
import java.util.Date;
import java.util.ArrayList;
import java.util.List;

@Transactional
@Repository
public class TourRepository extends GenericsRepository<Tour, String> implements ITourRepository {

    @Autowired
    IProvinceRepository provinceRepository;
    @Autowired
    ILandMarkRepository landMarkRepository;
    @Autowired
    IBookingDetailRepository bookingDetailRepository;

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
            return getBetweenValue(fromPrice,toPrice,Tour.class.getDeclaredField("price"));
        } catch (Exception exception) {
            throw new Exception("Lỗi tìm kiếm tour theo giá");
        }
    }

    @Override
    public void removeTour(String tourId)throws Exception{

        try{
            Tour tour = getElementById(tourId);
            if(tour == null){
                throw new Exception("không có tour này");
            }
            List<Bookingdetails> book = (List<Bookingdetails>) tour.getBookingdetails();

            if(book == null || book.size() < 1 || book.isEmpty()) {
                currentSession().createSQLQuery("CALL deleteTourInDiaDiemDi(:tourId)").setParameter("tourId", tourId).executeUpdate();
                currentSession().remove(getElementById(tourId));
                return;
            }
            throw new Exception("Lỗi không xóa tour đã đặt");
        } catch (Exception ex){
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
                save(tour);
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
