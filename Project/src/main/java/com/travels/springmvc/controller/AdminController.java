package com.travels.springmvc.controller;

import com.travels.springmvc.modelView.TourView;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.respository.Enum.EMessages;
import com.travels.springmvc.services.ICustomerService;
import com.travels.springmvc.services.IProvinceService;
import com.travels.springmvc.services.ITourService;
import com.travels.springmvc.modelView.InforAccount;
import com.travels.springmvc.pojo.*;
import com.travels.springmvc.services.*;
import com.travels.springmvc.services.implement.AgesService;
import org.dom4j.rule.Mode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    ICustomerService customerService;
    @Autowired
    ITourService tourService;
    @Autowired
    IAccountService accountService;
    @Autowired
    ITourPricesService tourPricesService;
    @Autowired
    IAgesService agesService;
    @Autowired
    IEmployeesService employeesService;
    @Autowired
    INewsService newsService;
    @Autowired
    IBookingService bookingService;
    @Autowired
    TourView tourView;

    @Autowired
    IProvinceService provinceService;

    @RequestMapping(value = {"","/index","/home"})
    public String index(Model model){
        int sumCustomer = 0;
        int sumTour = 0;
        int sumNews = 0;
        int sumEmployee = 0;
        List<Customer> customers = customerService.getAll();
        List<Tour> tours = tourService.getAll();
        List<News> news = newsService.getAll();
        List<Employees> employees = employeesService.getAll();
        for (Customer c: customers) { sumCustomer++; }
        for (Tour t:tours) {sumTour++; }
        for (News n:news) {sumNews++; }
        for (Employees e:employees) {sumEmployee++; }
        model.addAttribute("sumCustomer", sumCustomer);
        model.addAttribute("sumTour", sumTour);
        model.addAttribute("sumNews", sumNews);
        model.addAttribute("sumEmployee", sumEmployee);
        return "TrangAdmin";
    }

    @RequestMapping(value = {"customers"})
    public String pageListCustomer(Model model) {
        List<Customer> showall = customerService.getAll().stream().filter(c -> c.getAccount() != null).collect(Collectors.toList());
        model.addAttribute("lsCustomer", showall);

        return "template_customer_admin";
    }

    @RequestMapping(value = {"/customer/update"})
    public String updateCustomer(Model model, @RequestParam(value = "customerId", required = false) String customerId, RedirectAttributes redirectAttributes) {
        Customer customer = customerService.getElementById(customerId);
        Account acc = customer.getAccount();
        model.addAttribute("view", new InforAccount());
        model.addAttribute("Customer", customer);
        model.addAttribute("account", acc);

        return "updateCustomer";
    }

    @PostMapping(value = {"/customer/update"})
    public String updateAndSaveCustomer(@ModelAttribute("view") InforAccount customer,
                                        @RequestParam(value = "customerId", required = false) String customerId, RedirectAttributes attributes) {
        //gắn cái id cho customer vs acc
        try{
            Customer cus = customer.getCustomer();
            cus.setCustomerId(customerId);

            Account acc = customerService.getElementById(customerId).getAccount();
            //acc.setUserName(customerService.getElementById(customerId).getAccount().getUserName());
            cus.setAccount(acc);

            customerService.update(cus);
//            accountService.update(acc);
            attributes.addFlashAttribute("messges", new String[]{EMessages.success.name(), "Sửa khách hàng thành công"});

        }catch (Exception exception){
            attributes.addFlashAttribute("messges", new String[]{EMessages.error.name(), exception.getMessage()});
            exception.printStackTrace();
        }

        return "redirect:/admin/customer/update?customerId=" + customerId;
    }


    @RequestMapping(value = "/employees")
    public String pageListEmployees(Model model) {
        List<Employees> employees = employeesService.getAll();
        model.addAttribute("lsEmployee", employees);
        return "template_employee_admin";
    }

    @RequestMapping(value = {"/employee/update"})
    public String updateEmployee(Model model, @RequestParam(value = "employeeId", required = false) String employeeId) {
        Employees employees = employeesService.getElementById(employeeId);
        Account acc = employees.getAccount();
        model.addAttribute("view", new InforAccount());
        model.addAttribute("employee", employees);
        model.addAttribute("account", acc);
        return "updateEmployee";
    }

    @PostMapping(value = {"/employee/update"})
    public String updateAndSaveEmployee(@ModelAttribute("view") InforAccount employee, @RequestParam(value = "employeeId", required = false) String employeeId,
                                        RedirectAttributes attributes) {
        try {
            Employees employees = employee.getEmployee();
            Account acc = employeesService.getElementById(employeeId).getAccount();
            acc.setUserName(employeesService.getElementById(employeeId).getAccount().getUserName());
            employees.setAccount(acc);
            employees.setEmployeeId(employeeId);
            employeesService.update(employees);
            accountService.update(acc);
            attributes.addFlashAttribute("messges", new String[]{EMessages.success.name(), "Sửa khách hàng thành công"});

        }catch (Exception e){
            attributes.addFlashAttribute("messges", new String[]{EMessages.error.name(), e.getMessage()});
            e.printStackTrace();
        }
        return "redirect:/admin/employee/update?employeeId=" + employeeId;
    }

    @RequestMapping(value = {"/bookings/"})
    public String pageListBooking(Model model) {
        List<Booking> bookings = bookingService.getAll();
        System.err.println("==============");
        System.err.println(bookings);
        System.err.println("==============");
        model.addAttribute("booking", bookings);
        return "confirmBooking";
    }

    @RequestMapping(value = {"/bookings/details"})
    public String confirmOfEmployee(@RequestParam("bookingId") String bookingId){

        return "confirmBookingDetail";
    }

}



