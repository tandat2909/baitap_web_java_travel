package com.travels.springmvc.services.implement;

import com.travels.springmvc.modelView.BookingView;
import com.travels.springmvc.modelView.TourView;
import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.pojo.Tour;
import com.travels.springmvc.respository.Enum.EAges;
import com.travels.springmvc.services.IBookingService;
import org.junit.FixMethodOrder;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
class BookingServiceTest {
    @Autowired
    IBookingService bookingService;

    BookingView bookingView;
    Booking booking;
    String username = "customer";


    @BeforeEach
    void setUp() {
//        Customer customer = new Customer();
//        Booking booking = new Booking();
//        //định dạng hoten+":"+giotinh+":"+ngaysinh+":"+ages+";"
//        String tickets;


        booking = new Booking();
        bookingView = new BookingView();
        booking.setNote("note test");
        bookingView.setBooking(booking);
        booking.setAmountGuests(3);
        String tickets =
                "Tấn Đạt:Nam:2019-3-3:" + EAges.getId(EAges.NGUOILON) + ";" +
                        "Vũ Tấn Đạt:Nam:2019-4-3:" + EAges.getId(EAges.EMBE) + ";";
        bookingView.setTickets(tickets);

    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void getAll() {
        List<Booking> all = bookingService.getAll();
        assertNotNull(all);
        all.forEach(System.out::println);
    }

    @Test
    void TC_3_remove() {

    }

    @Test
    void TC_1_add() throws Exception {
        booking.setTourId("234");
        bookingService.add(bookingView, username);


    }

    @Test
    void testRemove() {

    }

    @Test
    void comfirmBooking() {
    }

    @Test
    void testComfirmBooking() {
    }
}