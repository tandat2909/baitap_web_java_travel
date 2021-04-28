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
    public String timKiemDiaDiemDi(Model model, @RequestParam(value = "kw", required = false) String kw,@RequestParam(value = "loaiTimKiem") String loaiTimKiem, RedirectAttributes redirectAttributes){
       // model.addAttribute("tourSearch", tour);

            try {
                if(loaiTimKiem.equals("diadiemdi")) {
                    List<Tour> tour = tourService.searchTourByLandMarkId(kw);
                    //chuyển nguyên đối tượng addFlashAttribute
//                    redirectAttributes.addFlashAttribute("diadiemdiSearch", tour);
                    model.addAttribute("diadiemdiSearch", tour);
                }
                if(loaiTimKiem.equals("province")){
                    List<Tour> tour = tourService.searchTourByProvince(kw);
                    model.addAttribute("provinceSearch", tour);
                }
                if(loaiTimKiem.equals("price")){
                    String[] chuoi = null;
                    chuoi = kw.split("-");
                    BigDecimal fromPrice = new BigDecimal(chuoi[0] + "0000000") ;
                    BigDecimal toPrice = new BigDecimal(chuoi[1] + "0000000");;
                    List<Tour> tour = tourService.searchTourByPrice(fromPrice, toPrice);
                    model.addAttribute("priceSearch", tour);
                }
                if(loaiTimKiem.equals("ngaydi") || loaiTimKiem.equals("ngayden"))
                {
                    Date date = new SimpleDateFormat("yyyy-MM-dd").parse(kw);
                    //Date date1 = new Date();
                    List<Tour> tour = tourService.searchTourByDate(date);
                    model.addAttribute("dateSearch",tour);
                    System.err.println("==========================");
                    System.err.println(tour);
                    System.err.println(date);
                    System.err.println("==========================");

                }
                //Tìm kiếm theo ngày đi và ngày đến

            } catch (Exception e) {
                e.printStackTrace();
            }

//            System.err.println("==========================");
//            System.err.println(fromPrice);
//            System.err.println(toPrice);
//            System.err.println("==========================");
            //tourService.searchTourByLandMarkId(diadiemdi.getKw()).forEach(System.out::println);


//        System.err.println(diadiemdi.getLoaiTimKiem());
//        System.err.println(diadiemdi.getKw());

        return "Services";
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

