package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Tour;
import com.travels.springmvc.respository.Enum.EAges;
import com.travels.springmvc.services.ILandMarkService;
import com.travels.springmvc.services.IProvinceService;
import com.travels.springmvc.services.ITourService;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.enterprise.inject.Stereotype;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import static org.junit.jupiter.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.assertTrue;

@SpringBootTest
class TourServiceTest {
    Tour tour;
    @Autowired
    ITourService tourService;

    @Autowired
    IProvinceService provinceService;

    @Autowired
    ILandMarkService landMarkService;

    @BeforeEach
    void setUp() {
        tour = new Tour();
        tour.setTourId(UUID.randomUUID().toString());
        tour.setTourName("Hà nội - thành phố hồ chí minh 2 ngày 3 đêm");
        tour.setMaxseats(5);
        tour.setPrice(new BigDecimal(23234234));
        tour.setVehicle("Xe hơi");
        tour.setStartDay(new Date(234444234));
        tour.setContent("hà nội ngày 12 -3 -23");

    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void add() {
        try{
            tourService.addTour(tour);
        } catch (Exception ex){
            ex.printStackTrace();
            assertTrue(ex.getMessage().equals("Lỗi không thể thêm tour"));
        }
         //assertEquals(tour.getTourId(), tourService.getElementById(tour.getTourId()).getTourId());
    }
    @Test
    void update() {
        Tour tours = tourService.getElementById("32959e0e-c58c-456e-9b97-3f3a4b771af1");
        tours.setPrice(new BigDecimal(23234234));
        tours.setContent("âsasasa");
        try{
            tourService.updateTour(tours);
        } catch (Exception ex){
            System.out.println(ex.getMessage());
            assertTrue(ex.getMessage().equals("không sửa được"));
        }
    }
    @Test
    void getAll() {
        tourService.getAll().forEach(System.out::println);
    }

    @Test
    void getElementById() {
        String tourid = "9013ca49-6579-4292-8d8c-f07132259bb6";
        assertEquals(tourid, tourService.getElementById(tourid).getTourId());
    }

    @Test
    void searchTourbyProvince() {
        String provinceId = "0704269f-fb9e-4e01-b0f6-251fd1f2035e";

        tourService.searchTourByProvince(provinceService.getElementById(provinceId)).forEach(System.out::println);
    }

    @Test
    void searchTourByProvinceId() {
        String provinceId = "0704269f-fb9e-4e01-b0f6-251fd1f2035e";
        tourService.searchTourByProvince(provinceId).forEach(System.out::println);
    }
    @Test
    void searchTourByProvinceName() throws NoSuchFieldException {
        try {
            tourService.searchTourByProvinceName("nghệ an").forEach(System.out::println);
        } catch (Exception exception) {
            exception.printStackTrace();
        }
    }

    @Test
    void searchTourByName()  {
        List<Tour> tourList = null;
        try {
            tourList = tourService.SearchTourByName("Hà nội");
        } catch (Exception exception) {

            exception.getMessage();
        }
        tourList.forEach(System.out::println);
        assertTrue(tourList.size()>0);
    }

    @Test
    void remove() throws Exception {
        try{
            tourService.remove(tourService.getElementById("6ab9fbdb-5f89-4a8d-bfbe-51cbce28ae91"));
        } catch (Exception ex){
            System.out.println(ex.getMessage());
            assertTrue(ex.getMessage().equals("Lỗi không xóa tour đã đặt"));
        }

        //assertNull(tourService.getElementById(tour.getTourId()));
    }
    @Test
    void getTourByLandMarkId(){
       tourService.searchTourByLandMarkId("123123").forEach(System.out::println);
    }
    @Test
    void getTourByLandMarkNameNull() {
        try{
            tourService.searchTourByLandMarkName(null).forEach(System.out::println);
        }catch (Exception e){
            System.out.println(e.getMessage());
            assertEquals(e.getMessage(), "Tên địa danh không được để trống");
        }

    }

    @Test
    void searchTourByDate() throws Exception
    {
       tourService.searchTourByDate(new Date(121,3,2,0,0,0),new Date()).forEach(System.out::println);

    }

    @Test
    void searchTourByPrice() {
        try {
            System.out.println(Long.MAX_VALUE);
            tourService.searchTourByPrice(null,null).forEach(System.out::println);
        } catch (Exception exception) {
            System.out.println(exception.getMessage());
        }
    }

}
