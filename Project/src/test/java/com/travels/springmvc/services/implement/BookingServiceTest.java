package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.pojo.Tour;
import com.travels.springmvc.services.IBookingService;
import com.travels.springmvc.services.ICustomerService;
import com.travels.springmvc.services.IEmployeesService;
import com.travels.springmvc.services.ITourService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@SpringBootTest
public class BookingServiceTest {
    @Autowired
    ICustomerService customerService;
    @Autowired
    IEmployeesService employeesService;
    @Autowired
    IBookingService bookingService;
    @Autowired
    ITourService tourService;

    @Test
    public void sumOfCustomer(){
        //List<Employees> employees = employeesService.getAll().stream().filter(employees1 -> employees1.getBookings().isEmpty()).collect(Collectors.toList());
        //List<Booking> bookings = bookingService.getAll();
       int dem = 0;
       int[][] month = null;
       List<Tour> tours = tourService.getAll();
        for (Tour t: tours){
            t.getStartDay().setHours(0);
            t.getStartDay().setMinutes(0);
            t.getStartDay().setSeconds(0);
            Date date = new Date(t.getStartDay().getTime());
            System.out.println(date);

        }


    }
}
