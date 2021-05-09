package com.travels.springmvc.services.implement;

import com.travels.springmvc.respository.Enum.EAges;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Arrays;
import java.util.Date;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class AgesServiceTest {

    @BeforeEach
    void setUp() {
    }

    @AfterEach
    void tearDown() {
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