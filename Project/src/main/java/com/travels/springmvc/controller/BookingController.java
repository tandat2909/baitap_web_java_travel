package com.travels.springmvc.controller;

import com.travels.springmvc.modelView.BookingView;
import com.travels.springmvc.modelView.InforAccount;
import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.services.IBookingService;
import com.travels.springmvc.services.ICustomerService;
import com.travels.springmvc.services.ITourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

    @Autowired
    ICustomerService customerService;




    @RequestMapping()
    public String booktour(Model model,
                           @RequestParam(value = "tourid",required = false) String tourid ,
                           HttpServletRequest request){
        String username = request.getUserPrincipal().getName();
        Customer customer = customerService.getCustomerByUserName(username);
        InforAccount info = new InforAccount(customer);
        if(tourid == null){
            return "redirect:/Packages";
        }

        model.addAttribute("tour",tourService.getElementById(tourid));
        model.addAttribute("bookinginfo", bookingView);
        model.addAttribute("info",info);
        return "template_booking";

    }
    @PostMapping()
    public String addBooking(Model model, @RequestParam(value = "tourid") String tourid ,
                             @ModelAttribute("bookinginfo") BookingView bookingviews,
                             HttpServletRequest request,
                             RedirectAttributes attributes


    ) {
        try{
//            System.err.println("=================");
            bookingviews.getBooking().setTourId(tourid);
            String username = request.getUserPrincipal().getName();
//            System.err.println(bookingviews);
//            System.err.println("username: "+username);
            Booking result = bookingService.add(bookingviews,username);
            attributes.addFlashAttribute("messges","success");
            attributes.addFlashAttribute("error",false);
            return "redirect:/pay/momo?bookingId="+result.getBookingId();
        }catch (Exception exception){
            attributes.addFlashAttribute("error",true);
            attributes.addFlashAttribute("messges",exception.getMessage());
            attributes.addFlashAttribute("rebookinginfo",bookingviews);
            System.err.println("========= errro booking controller");
            exception.printStackTrace();
            return "redirect:/booking?tourid="+tourid +"#bookinginfo";
        }


    }


}
