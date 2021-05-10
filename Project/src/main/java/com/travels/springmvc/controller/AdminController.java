package com.travels.springmvc.controller;

import com.travels.springmvc.modelView.TourView;
import com.travels.springmvc.pojo.Customer;
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
    public String updateAndSaveCustomer(@ModelAttribute("view") InforAccount customer, @RequestParam(value = "customerId", required = false) String customerId) {
        //gắn cái id cho customer vs acc
        Customer cus = customer.getCustomer();
        Account acc = customerService.getElementById(customerId).getAccount();
        acc.setUserName(customerService.getElementById(customerId).getAccount().getUserName());
        cus.setAccount(acc);
        cus.setCustomerId(customerId);
        customerService.update(cus);
        accountService.update(acc);
        System.err.println("==================");
        System.err.println(cus);
        System.err.println(acc);
        System.err.println("==================");

        return "redirect:/admin/customers";
    }

    @RequestMapping(value = "/tours")
    public String pageListTour(Model model) {
        model.addAttribute("lsTour", tourService.getAll());
        return "template_tour_admin";
    }
    @RequestMapping(value = "/tour/edit")
    public String pageEditTour(Model model){
        model.addAttribute("lsTour",tourService.getAll());
        return "template_edit_admin";
    }

    @RequestMapping("/tour/add")
    public String addTour(Model model){
        model.addAttribute("tournew",tourView);
        model.addAttribute("provinces",provinceService.getAll());
        return "template_add_admin";
    }
    @PostMapping("tour/add")
    public String addTour(@ModelAttribute( name = "tournew") TourView tourView) throws Exception {
        System.err.println("===================================");
        System.err.println(tourView);
        System.err.println(tourView.getContents());
        tourView.getListContens().forEach(System.err::println);
        tourView.getTourprices().forEach(System.err::println);
        System.err.println("===================================");
        tourService.add(tourView);
        return "redirect:/admin/tour/add";
    }

    @RequestMapping(value = "/updateTour")
    public String updateTour(Model model, @RequestParam(value = "tourid", required = false) String tourId) {
        Tour tour = tourService.getElementById(tourId);
        List<Tourprices> prices = (List<Tourprices>) tour.getTourprices();
        System.err.println("======================");
        System.err.println(prices);
        System.err.println("======================");
        model.addAttribute("tour", tour);
        model.addAttribute("price", prices);

        return "updateTour";
    }

    @PostMapping(value = "/updateTour")
    public String updateAndSaveTour(Model model, @ModelAttribute(value = "prices") String prices, @RequestParam(value = "tourId", required = false) String tourId) {
        Tour tour = tourService.getElementById(tourId);
        List<Tourprices> priceId = (List<Tourprices>) tour.getTourprices();
//        model.addAttribute("tour", tour);
        //cắt chuỗi theo ageId vs price , get tourprices theo ageId và theo tourId nếu có thì set giá vo không thì bỏ qua
        String[] tuoi = prices.split(";");
//        for (int i = 0; i < tuoi.length; i++)
//        {
//            String[] a = tuoi[i].split(":");
//            String price = a[0];
//            String ageId = a[1];
//            Tourprices tprices = priceId.stream().filter(p -> p.getAges().getAgeId().equals(ageId)).findFirst().orElse(null);
//            System.err.println("================");
//            System.err.println(tprices);
//            System.err.println("================");
//            tprices.setPrice(Integer.parseInt(price));
//            tourPricesService.update(tprices);
//            }
//
        for (Tourprices t : priceId) {
            for (String tu : tuoi) {
                String[] a = tu.split(":");
                if (t.getAges().getAgeId().equals(a[1])) {
                    t.setPrice(new BigDecimal(a[0]));
                    tourPricesService.update(t);
                }
            }

        }

        return "redirect:/admin/tours";
    }

    @RequestMapping(value = "/employees")
    public String pageListEmployees(Model model) {
        List<Employees> employees = employeesService.getAll().stream().filter(c -> c.getAccount() != null).collect(Collectors.toList());
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
    public String updateAndSaveEmployee(@ModelAttribute("view") InforAccount employee, @RequestParam(value = "employeeId", required = false) String employeeId) {
        Employees employees = employee.getEmployee();
        Account acc = employeesService.getElementById(employeeId).getAccount();
        acc.setUserName(employeesService.getElementById(employeeId).getAccount().getUserName());
        employees.setAccount(acc);
        employees.setEmployeeId(employeeId);
        employeesService.update(employees);
        accountService.update(acc);
        System.err.println("==================");
        System.err.println(employees);
        System.err.println(acc);
        System.err.println("==================");

        return "redirect:/admin/employees";
    }




}



