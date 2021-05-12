package com.travels.springmvc.services.implement;

import com.travels.springmvc.modelView.BookingView;
import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.respository.IBookingRepository;
import com.travels.springmvc.services.IBookingService;
import com.travels.springmvc.services.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class BookingService extends GenericsService<Booking,String> implements IBookingService {

    @Autowired
    ICustomerService customerService;

    @Autowired
    IBookingRepository bookingRepository;
    @Override
    public void add(BookingView bookingView,String username) throws Exception {

        Customer customer = customerService.getCustomerByUserName(username);
        System.err.println("===== booking user  =");
        System.err.println(customer);

        if(customer == null) throw new Exception("Bạn Không thể đăng ký tour với tài khoản này");
        bookingView.setCustomer(customer);
        bookingView.getBooking().setCustomer(customer);
        System.err.println("customer after set");
        System.err.println(bookingView.getBooking().getCustomer());
        bookingRepository.save(bookingView);
    }

    @Override
    public void remove(String bookingId) throws Exception {
        bookingRepository.remove(bookingId);
    }

    @Override
    public void comfirmBooking(String bookingId) throws Exception {
        bookingRepository.comfirmBooking(bookingId);
    }

    @Override
    public void comfirmBooking(Booking booking) throws Exception {
        comfirmBooking(booking.getBookingId());
    }




}
