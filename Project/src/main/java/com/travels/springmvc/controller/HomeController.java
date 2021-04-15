package com.travels.springmvc.controller;

import com.travels.springmvc.respository.ITourDetailRepository;
import com.travels.springmvc.services.IAccountService;
import com.travels.springmvc.services.ICustomerService;
import com.travels.springmvc.services.ITourDetailService;
import com.travels.springmvc.services.ITourService;
import org.dom4j.rule.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

@Controller
public class HomeController {

    @Autowired
    ITourDetailService tourDetailService;
    @Autowired
    ITourService tourService;
    @RequestMapping(value = {"/", "/home"})
    public String TrangChu(Model model) {
        return "TrangChu";
    }

    @RequestMapping("/About")
    public String About(Model model) {
        return "About";
    }

    @RequestMapping("/Services")
    public String Services(Model model) {
        return "Services";
    }

    @RequestMapping("/Packages")
    public String Packages(Model model) {
        return "Packages";
    }

    @RequestMapping("/Contact")
    public String Contact(Model model) {
        return "Contact";
    }

    @RequestMapping("/Booking")
    public String Booking(Model model) {
        return "Booking";
    }

    @RequestMapping("/tourdetail")
    public String TourDetail(Model model ,@RequestParam(value = "tourid") String tourid ){
        model.addAttribute("tour",tourService.getElementById(tourid));
        return "template_tourdetail";
    }

}

