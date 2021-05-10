package com.travels.springmvc.controller.API;


import com.travels.springmvc.services.IEmployeesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RequestMapping("/api")
@RestController
public class APIEmployeeController {

    @Autowired
    IEmployeesService employeesService;

    @DeleteMapping("/employee")
    @ResponseStatus(HttpStatus.OK)
    public void deleteCustomer(@RequestParam(value = "employeeId",required = true) String employeeId) throws Exception {
        System.err.println("===================================");
        System.err.println("id khách hàng: "+ employeeId);
        System.err.println("===================================");
        employeesService.remove(employeesService.getElementById(employeeId));

    }
}
