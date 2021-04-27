package com.travels.springmvc.controller;

import com.travels.springmvc.modelView.SearchView;
import com.travels.springmvc.pojo.Tour;
import com.travels.springmvc.services.ILandMarkService;
import com.travels.springmvc.services.IProvinceService;
import com.travels.springmvc.services.ITourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
        model.addAttribute("diadiemdi", this.landMarkService.getAll());
        model.addAttribute("tinh", this.provinceService.getAll());
        model.addAttribute("tour", this.tourService.getAll());

        return "TrangChu";
    }

    @RequestMapping({"/timkiem"})
    public String timKiemDiaDiemDi(Model model, @RequestParam(value = "kw", required = false) String kw,@RequestParam(value = "loaiTimKiem") String loaiTimKiem, RedirectAttributes redirectAttributes){
       // model.addAttribute("tourSearch", tour);
            try {
                if(loaiTimKiem.equals("diadiemdi")) {
                    List<Tour> tour = tourService.searchTourByLandMarkId(kw);
                    //chuyển nguyên đối tượng addFlashAttribute
                    redirectAttributes.addFlashAttribute("diadiemdiSearch", tour);
                }
            } catch (Exception e) {
                e.printStackTrace();
            }

        //tourService.searchTourByLandMarkId(diadiemdi.getKw()).forEach(System.out::println);

//        System.err.println("==========================");
//        System.err.println(diadiemdi.getLoaiTimKiem());
//        System.err.println(diadiemdi.getKw());
//        //System.out.println(tour);
//        System.err.println("==========================");
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

