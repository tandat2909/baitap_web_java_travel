package com.travels.springmvc.controller;

import com.travels.springmvc.services.ITourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping({"/booking","/Booking"})
public class BookingController {
    @Autowired
    ITourService tourService;

    @RequestMapping()
    public String booktour(Model model, @RequestParam(value = "tourid",required = false) String tourid ){
        //Tour tour= tourService.getElementById(tourid);
        if(tourid == null){
            return "redirect:/Packages";
        }
        model.addAttribute("tour",tourService.getElementById(tourid));
        return "template_booking";

    }
}
