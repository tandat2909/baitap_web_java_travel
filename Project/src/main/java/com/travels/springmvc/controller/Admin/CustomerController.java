package com.travels.springmvc.controller.Admin;

import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.services.ICustomerService;
import com.travels.springmvc.services.implement.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller

public class CustomerController {
    @Autowired
    private ICustomerService customerService;

    @RequestMapping("/CustomerTable")
    public String table(Model model){
        this.customerService.getAll().forEach(System.out::println);
        List<Customer> cus = this.customerService.getAll();
        model.addAttribute("customers",cus );
        return "Table";
    }
//    public String deleteCustomer(Model m, @PathVariable("customerId") int customerId){
//        Customer customer = customerService.getElementById("customerId");
//        if(customer != null) {
//            boolean cus = customerService.remove(customer);
//        }
//
//    }
    @DeleteMapping ("/customers/{customerId}")
    @ResponseStatus(HttpStatus.OK)
    public void deleteCustomer(@PathVariable(name = "customerId") String customerId) {
        this.customerService.remove(customerService.getElementById(customerId));
    }
    @PostMapping("/customers/update/{customerId}")
    public void updateCustomer(@PathVariable(name = "customerId") String customerId){
        System.out.println(customerId);

        this.customerService.saveOrUpdate(customerService.getElementById(customerId));
    }
}
