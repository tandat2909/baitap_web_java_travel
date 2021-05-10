package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Landmarks;
import com.travels.springmvc.pojo.Province;
import com.travels.springmvc.services.ILandMarkService;
import com.travels.springmvc.services.IProvinceService;
import org.junit.Before;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Collection;
import java.util.List;
import java.util.UUID;

@SpringBootTest
public class ProvinceServiceTest {

    Province province;
    Landmarks landmarks;
    @Autowired
    IProvinceService provinceService;
    @Autowired
    ILandMarkService landMarkService;

//    @Before
//    void setUp(){
//        province = new Province();
//        landmarks = new Landmarks();
//        province.setProvinceId(UUID.randomUUID().toString());
//        province.setProvinceName("không biêt");
//        province.setLandmarks((Collection<Landmarks>) landmarks);
////        List<Landmarks> landmarksList = landMarkService.getAll(
//
//    }
//
//
//    @BeforeEach
//    void addLandMark(){
//        landmarks.setLandMarkId("1");
//        landmarks.setLandMarkName("Cũng không biết");
//        landmarks.setProvince(province);
//        landmarks.setProvince(province);
//        landMarkService.add(landmarks, true);
//    }
//    @Test
//    void add(){
//        try{
//            provinceService.add(province, true);
//        } catch (Exception e){
//            e.printStackTrace();
//        }
//    }
    @Test
    void getAll(){
        try{
            List<Province> provinces = provinceService.getAll();
            provinces.forEach(System.out::println);
        } catch (Exception e){
            e.printStackTrace();
        }
    }
}
