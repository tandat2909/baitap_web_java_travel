package com.travels.springmvc.controller.API;

import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.services.IBookingService;
import com.travels.springmvc.services.ICustomerService;
import com.travels.springmvc.services.IEmployeesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.stream.Collectors;

@RequestMapping("/api")
@RestController
public class APIStatisticController {

    @Autowired
    ICustomerService customerService;
    @Autowired
    IEmployeesService employeesService;
    @Autowired
    IBookingService bookingService;

    @GetMapping(value = {"/admin/home"})
    public void sumOfCustomer(){


    }
}
