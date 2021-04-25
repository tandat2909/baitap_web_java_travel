package com.travels.springmvc.controller.API;

import com.travels.springmvc.services.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.*;

@RequestMapping("/api")
@RestController
public class APICustomerController {

    @Autowired
    ICustomerService customerService;

    @DeleteMapping("/customer")
    @ResponseStatus(HttpStatus.OK)
    public void deleteCustomer(@RequestParam(value = "cusid",required = true) String cusid){
        System.err.println("===================================");
        System.err.println("id khách hàng: "+cusid);
        System.err.println("===================================");
        customerService.remove(customerService.getElementById(cusid));

    }
}
