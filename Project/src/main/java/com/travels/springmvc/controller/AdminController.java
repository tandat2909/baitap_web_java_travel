package com.travels.springmvc.controller;

import com.travels.springmvc.services.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    ICustomerService customerService;

    @RequestMapping(value = {"","/index","/home"})
    public String index(){
        return "TrangAdmin";
    }

    @RequestMapping(value = {"customers"})
    public String pageCustomer(Model model){
        customerService.getAll().forEach(System.err::println);
        model.addAttribute("lsCustomer",customerService.getAll());
        return "template_customer_admin";
    }
}

