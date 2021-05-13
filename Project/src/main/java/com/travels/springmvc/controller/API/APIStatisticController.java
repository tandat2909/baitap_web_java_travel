package com.travels.springmvc.controller.API;

import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.services.IBookingService;
import com.travels.springmvc.services.ICustomerService;
import com.travels.springmvc.services.IEmployeesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@RequestMapping("/api/admin/statistic")
@RestController
public class APIStatisticController {

    @Autowired
    IBookingService bookingService;

    public void sumTourOfYear(@RequestParam(value = "year") int year) throws Exception {
        bookingService.thongketheonam(year).size();
    }
    @RequestMapping("")
    public Integer[] sumTourOfMonth(@RequestParam(name = "month") int month, @RequestParam(name = "year") int year) throws Exception {
        Integer[] sum = new Integer[12];
        for (int i = 0; i < 12; i++)
           sum[i] =  bookingService.thongketheothang(year, i+1).size();
        return sum;
    }
    @RequestMapping("/quy")
    public Integer[] sumTourOfQuy(@RequestParam(name = "year") int year) throws Exception{
        Integer[] quy = new Integer[4];

        for (int i = 1; i <=3; i++){
            if(i == 1){
                quy[0] = 0;
                quy[1] = 0;
                quy[2] = 0;
                quy[3] = 0;
            }
            quy[0] +=  bookingService.thongketheothang(year, i).size();
            quy[1] +=  bookingService.thongketheothang(year, i+3).size();
            quy[2] +=  bookingService.thongketheothang(year, i+6).size();
            quy[3] +=  bookingService.thongketheothang(year, i+9).size();
        }



        return quy;
    }

}
