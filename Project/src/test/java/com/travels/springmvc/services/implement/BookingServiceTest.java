package com.travels.springmvc.services.implement;

import com.travels.springmvc.modelView.BookingView;
import com.travels.springmvc.modelView.TourView;
import com.travels.springmvc.modelView.Utils;
import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.pojo.Tour;
import com.travels.springmvc.respository.Enum.EAges;
import com.travels.springmvc.respository.IBookingRepository;
import com.travels.springmvc.services.IBookingService;
import com.travels.springmvc.services.ITourService;
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

    @Autowired
    IBookingRepository bookingRepository;
    BookingView bookingView;
    Booking booking;
    String username = "customer";
    @Autowired
    ITourService tourService;

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
    void TC_3_remove() throws Exception {
        for (Booking b : bookingService.getAll()){
            bookingService.remove(b);
        }

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
        String date1 = "2000-02-01";
        System.out.println(new Date().getYear() - Utils.getDateRequest(date1).getYear() );

    }

    @Test
    void testComfirmBooking() throws Exception {
        System.out.println(bookingRepository.thongketheonam(2021).size());
        System.out.println(bookingRepository.thongketheothang(2021, 6).size());
    }

    @Test
    void isComfirmBooking(){
        System.out.println(bookingService.isComfirmBookking("f5113f74-82cc-48fe-b192-fdcd339d7835"));

        System.out.println(bookingService.isComfirmBookking("82c452da-27da-44c1-a50c-a80b43fa8f2b"));
    }




}