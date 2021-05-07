package com.travels.springmvc.controller;

import com.travels.springmvc.modelView.BookingView;
import com.travels.springmvc.services.ITourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping({"/booking","/Booking"})
public class BookingController {
    @Autowired
    ITourService tourService;

    @Autowired
    BookingView bookingView;


    @RequestMapping()
    public String booktour(Model model, @RequestParam(value = "tourid",required = false) String tourid ){
        //Tour tour= tourService.getElementById(tourid);

        if(tourid == null){
            return "redirect:/Packages";
        }
        model.addAttribute("tour",tourService.getElementById(tourid));
        model.addAttribute("bookinginfo", bookingView);
        return "template_booking";

    }
    @PostMapping()
    public String addBooking(Model model, @ModelAttribute("bookinginfo") BookingView bookingview){
        System.err.println(bookingview);
        return "redirect:/booking";

    }
   @PostMapping("news/comment")
   public void addcomment(){

   }

}
