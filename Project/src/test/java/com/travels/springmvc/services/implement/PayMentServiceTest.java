package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.pojo.PayMent;
import com.travels.springmvc.services.IBookingService;
import com.travels.springmvc.services.IPayMentService;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.math.BigDecimal;
import java.util.Date;
import java.util.UUID;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class PayMentServiceTest {
    @Autowired
    IPayMentService payMentService;
    @Autowired
    IBookingService bookingService;

    PayMent payMent ;

    @BeforeEach
    void setUp() {
        payMent = new PayMent();
        payMent.setPayId(UUID.randomUUID().toString());
        payMent.setTransId("123");
        payMent.setOrderId("234234");
        payMent.setDatePay(new Date());


    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void getAll() {

    }

    @Test
    void remove() {
    }

    @Test
    void update() {
    }

    @Test
    void add() {
        Booking booking = bookingService.getElementById("7c8ad31c-dd46-4c75-8be6-5f10dc00d57c");
        payMent.setBookingId(booking.getBookingId());
        payMent.setAmountPay(booking.getTotalMoney());
        try {
            payMentService.add(payMent);
        } catch (Exception exception) {
            exception.printStackTrace();
        }

    }
}