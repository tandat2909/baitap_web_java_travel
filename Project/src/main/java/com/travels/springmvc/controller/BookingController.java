package com.travels.springmvc.controller;

import com.travels.springmvc.modelView.BookingView;
import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.services.IBookingService;
import com.travels.springmvc.services.ITourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping({"/booking","/Booking"})
public class BookingController {
    @Autowired
    ITourService tourService;

    @Autowired
    IBookingService bookingService;

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
    public String addBooking(Model model, @RequestParam(value = "tourid") String tourid , @ModelAttribute("bookinginfo") BookingView bookingviews, HttpServletRequest request) throws Exception {
        System.err.println("=================");
        System.err.println(bookingviews);
        bookingviews.getBooking().setTourId(tourid);
        bookingviews.getTickets().forEach(System.err::println);
        bookingviews.setTourId(tourid);
        String username = request.getUserPrincipal().getName();
        bookingService.add(bookingviews,username);

//        try {
//            bookingService.add(bookingviews,username);
//        } catch (Exception exception) {
//            exception.printStackTrace();
//        }

        return "redirect:/booking?tourid=234";

    }


}
