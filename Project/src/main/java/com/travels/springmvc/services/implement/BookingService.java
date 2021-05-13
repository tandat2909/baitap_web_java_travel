package com.travels.springmvc.services.implement;

import com.travels.springmvc.modelView.BookingView;
import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.respository.Enum.EStatusPay;
import com.travels.springmvc.respository.IBookingRepository;
import com.travels.springmvc.services.IAccountService;
import com.travels.springmvc.services.IBookingService;
import com.travels.springmvc.services.ICustomerService;
import com.travels.springmvc.services.IEmployeesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class BookingService extends GenericsService<Booking,String> implements IBookingService {

    @Autowired
    ICustomerService customerService;
    @Autowired
    IAccountService accountService;

    @Autowired
    IBookingRepository bookingRepository;

    @Autowired
    IEmployeesService employeesService;

    @Override
    public Booking add(BookingView bookingView,String username) throws Exception {

        Account customer = accountService.getAccountByUserName(username);
//        System.err.println("===== booking user  =");
//        System.err.println(customer);

        if(customer == null) throw new Exception("Bạn Không thể đăng ký tour với tài khoản này");
        bookingView.setCustomer(customer);
        bookingView.getBooking().setCustomer(customer);
//        System.err.println("customer after set");
//        System.err.println(bookingView.getBooking().getCustomer());
       return bookingRepository.save(bookingView);
    }

    @Override
    public void remove(String bookingId) throws Exception {
        bookingRepository.remove(bookingId);
    }

    @Override
    public void comfirmBooking(String bookingId,String username) throws Exception {

       Account customer = accountService.getAccountByUserName(username);
        if(isComfirmBookking(bookingId)) {
            Employees employees = employeesService.getEmployeesByAccountId(customer.getAccountId());
            throw new Exception("Booking đã được xác nhận bởi nhân viên " + employees.getFirstName() +" " + employees.getLastName());
        }
       Booking booking = bookingRepository.getElementById(bookingId);
       booking.setEmployeesID(customer.getAccountId());
       booking.setStatus(true);
       bookingRepository.update(booking);
    }

    @Override
    public void comfirmBooking(Booking booking,String username) throws Exception {
        comfirmBooking(booking.getBookingId(),username);
    }

    @Override
    public boolean isComfirmBookking(String bookingId) {
       Booking booking = getElementById(bookingId);
       return booking.getEmployeesID() != null && booking.getEmployeesID().length() > 5 && booking.isStatus();
    }


}
