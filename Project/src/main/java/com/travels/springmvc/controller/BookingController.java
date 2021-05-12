package com.travels.springmvc.controller;

import com.travels.springmvc.modelView.BookingView;
import com.travels.springmvc.modelView.InforAccount;
import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.respository.ITourPriceRepository;
import com.travels.springmvc.services.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class BookingController {
    @Autowired
    ITourService tourService;

    @Autowired
    IBookingService bookingService;

    @Autowired
    BookingView bookingView;

    @Autowired
    ICustomerService customerService;
    @Autowired
    ITourPricesService tourPricesService;
    @Autowired
    IAccountService accountService;

    @Autowired
    IEmployeesService employeesService;




    @RequestMapping(value = {"/booking","/Booking"})
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
    @PostMapping(value = {"/booking","/Booking"})
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

    @RequestMapping(value = {"/admin/bookings"})
    public String pageListBooking(Model model) {
        List<Booking> bookings = bookingService.getAll();
        System.err.println("==============");
        System.err.println(bookings);
        System.err.println("==============");
        model.addAttribute("booking", bookings);
        model.addAttribute("customerService",customerService);
        model.addAttribute("employeesService",employeesService);
        return "confirmBooking";
    }

    @RequestMapping(value = {"/admin/bookings/details"})
    public String bookingDetail(Model model ,@RequestParam("bookingId") String bookingId,  HttpServletRequest request){
        Booking booking = bookingService.getElementById(bookingId);
        model.addAttribute("book", booking);
        model.addAttribute("tourPriceRepository",tourPricesService);
        System.err.println("=========================");
        System.err.println(booking);
        System.err.println("=========================");
        return "confirmBookingDetail";
    }


    //todo chưa làm thông báo thành công khi xác nhận

    @PostMapping(value = {"/admin/bookings/details"})
    public String confirmOfEmployee( HttpServletRequest request, @RequestParam("bookingId") String bookingId, RedirectAttributes attributes){

        try{
            Booking booking = bookingService.getElementById(bookingId);
            Account account = accountService.getAccountByUserName(request.getUserPrincipal().getName());
            booking.setEmployeesID(account.getAccountId());
            System.err.println("=========================");
            System.err.println(booking);
            System.err.println("=========================");
            bookingService.update(booking);
            return "redirect:/admin/bookings";
        } catch (Exception ex){
            System.err.println("============lỗi contoller booking confirmOfEmployee()");
            ex.printStackTrace();
        }
        return "redirect:/admin/bookings/details?bookingId=" + bookingId;
    }

}
