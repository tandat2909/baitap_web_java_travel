package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Ages;
import com.travels.springmvc.respository.Enum.EAges;
import com.travels.springmvc.services.IAgesService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@SpringBootTest
public class AgesServiceTest {
    Ages ages;
    @Autowired
    IAgesService agesService;

    @BeforeEach
    void setUp(){
        ages = new Ages();
        ages.setAgeId(UUID.randomUUID().toString());
        ages.setName("Người già");
    }

    @Test
    void add(){
        try{
            agesService.add(ages, true);
        } catch (Exception ex){
            ex.printStackTrace();
        }
    }

    @Test
    void getAll(){
        try{
            List<Ages> agesList =  agesService.getAll();
            agesList.forEach(System.out::println);
        } catch (Exception ex){
            ex.printStackTrace();
        }
    }
    @Test
    void getAgeVaildEnum(){
        Date a = new Date();
        Date b= new Date();
        b.setDate(a.getDate()-1);
        System.out.println(a.getTime());
        System.out.println(Math.round(a.getTime() - b.getTime()) *  1.15740741 *Math.pow(10,-8));
        System.out.println(EAges.getAgeVaild(EAges.TREEM)[0]);
        System.out.println(Arrays.toString(EAges.getAgeVaild(EAges.TREEM)));
    }
}
