package com.travels.springmvc.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.travels.springmvc.modelView.SearchView;
import com.travels.springmvc.pojo.Landmarks;
import com.travels.springmvc.pojo.Province;
import com.travels.springmvc.pojo.Tour;
import com.travels.springmvc.services.ILandMarkService;
import com.travels.springmvc.services.IProvinceService;
import com.travels.springmvc.services.ITourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

@Controller
public class HomeController {


    @Autowired
    ITourService tourService;
    @Autowired
    ILandMarkService landMarkService;
    @Autowired
    IProvinceService provinceService;

    @RequestMapping(value = {"/", "/home"})
    public String TrangChu(Model model) {
        List<Province> p = provinceService.getAll();
        model.addAttribute("tinh", p);
        //model.addAttribute("diadiemdi", landMarkService.getElementById());
        model.addAttribute("tour", this.tourService.getAll());

        return "TrangChu";
    }
    @GetMapping({"/landmarkId"})
    @ResponseBody
    public String getLandMarkId(@RequestParam(value = "kw") String  kw){
        //Collection<Landmarks> land =  provinceService.getElementById(kw).getLandmarks();
        ObjectMapper mapper = new ObjectMapper();
        String ajax = "";
        //sửa lỗi dính csdl do ajax
        try {
            List<Landmarks> landmarks = new ArrayList<>();
            provinceService.getElementById(kw).getLandmarks().forEach(t ->{
                Landmarks l = new Landmarks();
                l.setLandMarkId(t.getLandMarkId());
                l.setLandMarkName(t.getLandMarkName());
                l.setDetails(t.getDetails());
                landmarks.add(l);
            });
            ajax = mapper.writeValueAsString(landmarks);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
        return ajax;
    }

    @RequestMapping({"/timkiem"})
    public String timKiemDiaDiemDi(Model model,@RequestParam(value = "ngayve", required = false) String ngayve,
                                   @RequestParam(value = "ngaydi", required = false) String ngaydi,
                                   @RequestParam(value = "province", required = false) String province,
                                   @RequestParam(value = "diadiemdi", required = false) String diadiemdi,
                                   @RequestParam(value = "price", required = false) String price,
                                   RedirectAttributes redirectAttributes) throws ParseException {
        String empty = "";
        Date date = new java.util.Date();
        String[] chuoi = null;
        chuoi = price.split("-");
        BigDecimal fromPrice = new BigDecimal(chuoi[0] + "000000") ;
        BigDecimal toPrice = new BigDecimal(chuoi[1]  + "000000");

        try{
            if(tourService.checkEmpty(province) && tourService.checkEmpty(diadiemdi) && tourService.checkEmpty(price) &&
                    tourService.checkEmpty(ngaydi) && tourService.checkEmpty(ngayve))
            { throw new Exception("Không tìm thấy tour"); }
            if(ngaydi == null || ngaydi.isEmpty() || ngayve == null || ngayve.isEmpty())
            {
                Date fromDate = date;
                Date toDate = date;
                List<Tour> tour = tourService.searchAll(province, diadiemdi, fromPrice, toPrice, fromDate, toDate);
                model.addAttribute("tours",tour);
            }
            Date fromDate = new SimpleDateFormat("yyyy-MM-dd").parse(ngaydi);
            Date toDate = new SimpleDateFormat("yyyy-MM-dd").parse(ngayve);
            List<Tour> tour = tourService.searchAll(province, diadiemdi, fromPrice, toPrice, fromDate, toDate);
            model.addAttribute("tours",tour);
        } catch (Exception e){
            e.printStackTrace();
        }

        return "Search";
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



}

