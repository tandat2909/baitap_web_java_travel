package com.travels.springmvc.controller;


import com.travels.springmvc.modelView.TourView;
import com.travels.springmvc.pojo.Contents;
import com.travels.springmvc.pojo.Tour;
import com.travels.springmvc.pojo.Tourprices;
import com.travels.springmvc.respository.Enum.EMessages;
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
import java.io.File;
import java.io.IOException;
import java.math.BigDecimal;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

@Controller

public class TourController {

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


    @RequestMapping("/tour")
    public String TourDetail(Model model, @RequestParam(value = "tourid") String tourid) {

        if (tourid == null || tourid.equals("")) {
            return "redirect:/Packages";
        }

        model.addAttribute("tour", tourService.getElementById(tourid));
        return "template_tourdetail";
    }

    @RequestMapping(value = "admin/tours")
    public String pageListTour(Model model) {
        model.addAttribute("lsTour", tourService.getAll());
        return "template_tour_admin";
    }



    @RequestMapping(value = "admin/tour/edit")
    public String pageEditTour(Model model) {
        model.addAttribute("lsTour", tourService.getAll());
        return "template_edit_admin";
    }

    @RequestMapping("admin/tour/add")
    public String addTour(Model model) {
        model.addAttribute("tournew", tourView);
        model.addAttribute("provinces", provinceService.getAll());
        return "template_add_admin";
    }

    @PostMapping("admin/tour/add")
    public String addTour(@ModelAttribute(name = "tournew") TourView tourView,
                          HttpServletRequest request,
                          RedirectAttributes attributes
    ) {
//        System.err.println("===================================");
//        System.err.println(tourView);
//        System.err.println(tourView.getContents());
//        tourView.getListContens().forEach(System.err::println);
//        //tourView.getTourprices().forEach(System.err::println);
//        System.err.println("===================================");

        try {
            String rootDir = request.getSession().getServletContext().getRealPath("/");
            if (tourView.getImg() != null && !tourView.getImg().isEmpty()) {
                try {
                    String nameImg = tourView.getTour().getTourName() + ".png";
                    System.err.println("nameimag: " + nameImg);
                    tourView.getImg().transferTo(new File(rootDir + "resources/TrangChu/images/tours/" + nameImg));
                    tourView.getTour().setImage(nameImg);
                } catch (IOException | IllegalStateException ex) {
                    System.err.println("=========lỗi======");
                    System.err.println(ex.getMessage());
                    throw new Exception("Lỗi lưu hình ảnh");
                }
            }
            tourService.add(tourView);
            attributes.addFlashAttribute("messges", new String[]{EMessages.success.name(), "Tạo tour thành công"});
        } catch (Exception exception) {
            attributes.addFlashAttribute("messges", new String[]{EMessages.error.name(), exception.getMessage()});
            attributes.addFlashAttribute("tournewFlash", tourView);
            exception.printStackTrace();
        }
        return "redirect:/admin/tour/add";
    }

    @RequestMapping(value = "admin/updatePriceOfTour")
    public String updatePriceOfTour(Model model, @RequestParam(value = "tourid", required = false) String tourId) {
        Tour tour = tourService.getElementById(tourId);
        List<Tourprices> prices = (List<Tourprices>) tour.getTourprices();
        System.err.println("======================");
        System.err.println(prices);
        System.err.println("======================");
        model.addAttribute("tour", tour);
        model.addAttribute("price", prices);

        return "updatePrice";
    }

    @PostMapping(value = "admin/updatePriceOfTour")
    public String updateAndSavePriceOfTour(Model model, @ModelAttribute(value = "prices") String prices, @RequestParam(value = "tourid", required = false) String tourId) {
        Tour tour = tourService.getElementById(tourId);
        List<Tourprices> priceId = (List<Tourprices>) tour.getTourprices();
        String[] tuoi = prices.split(";");

        for (Tourprices t : priceId) {
            for (String tu : tuoi) {
                String[] a = tu.split(":");
                if (t.getAges().getAgeId().equals(a[1])) {
                    t.setPrice(new BigDecimal(a[0]));
                    try {
                        tourPricesService.update(t);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }

        }

        return "redirect:/admin/tours";
    }

    @RequestMapping(value = "admin/updateTour")
    public String updateTour(Model model, @RequestParam(value = "tourid", required = false) String tourId) {
        Tour tour = tourService.getElementById(tourId);
        List<Contents> contents = tour.getContents();
        //contents.stream().filter(c ->c.)
        List<Tourprices> tourprices = tourPricesService.getAll().stream().filter(t -> t.getTourId().equals(tourId)).collect(Collectors.toList());
        System.err.println("===================");
        System.err.println(tourprices);
        System.err.println("===================");
        model.addAttribute("tour", tour);
        model.addAttribute("prices", tourprices);
        return "updateTour";
    }
}
