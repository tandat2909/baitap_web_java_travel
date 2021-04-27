package com.travels.springmvc.controller;

import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.services.ICustomerService;
import com.travels.springmvc.services.ITourService;
import org.dom4j.rule.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    ICustomerService customerService;
    @Autowired
    ITourService tourService;

    @RequestMapping(value = {"","/index","/home"})
    public String index(){
        return "TrangAdmin";
    }

    @RequestMapping(value = {"customers"})
    public String pageListCustomer(Model model){
        List<Customer> showall = customerService.getAll().stream().filter(c -> c.getAccount() != null).collect(Collectors.toList());
        model.addAttribute("lsCustomer",showall);
        return "template_customer_admin";
    }

    @RequestMapping(value = "/tours")
    public String pageListTour(Model model){
        model.addAttribute("lsTour",tourService.getAll());
        return "template_tour_admin";
    }
    @RequestMapping(value = "/tour/edit")
    public String pageEditTour(Model model){
        model.addAttribute("lsTour",tourService.getAll());
        return "template_edit_admin";
    }





}

