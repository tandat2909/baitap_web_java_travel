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
        if(customer == null) throw new Exception("Bạn Không thể đăng ký tour với tài khoản này");
        bookingView.setCustomer(customer);
        bookingRepository.save(bookingView);
    }
}
