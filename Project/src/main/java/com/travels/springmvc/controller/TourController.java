package com.travels.springmvc.controller;


import com.travels.springmvc.services.IAgesService;
import com.travels.springmvc.services.IProvinceService;
import com.travels.springmvc.services.ITourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/tour")
public class TourController {

    @Autowired
    ITourService tourService;

    @Autowired
    IProvinceService provinceService;

    @Autowired
    IAgesService agesService;

    @RequestMapping("")
    public String TourDetail(Model model, @RequestParam(value = "tourid") String tourid) {

        if(tourid == null|| tourid.equals("")) {
            return "redirect:/Packages";
        }
        model.addAttribute("tour", tourService.getElementById(tourid));
        return "template_tourdetail";
    }

  /*  @RequestMapping("/province")
    public String addprovice() {
        String[] province = {
                "An Giang",
                "Bà Rịa - Vũng Tàu",
                "Bắc Giang",
                "Bắc Kạn",
                "Bạc Liêu",
                "Bắc Ninh",
                "Bến Tre",
                "Bình Định",
                "Bình Dương",
                "Bình Phước",
                "Bình Thuận",
                "Cà Mau",
                "Cao Bằng",
                "Đắk Lắk",
                "Đắk Nông",
                "Điện Biên",
                "Đồng Nai",
                "Đồng Tháp",
                "Gia Lai",
                "Hà Giang Hà Nam",
                "Hà Tĩnh",
                "Hải Dương",
                "Hậu Giang",
                "Hòa Bình",
                "Hưng Yên",
                "Khánh Hòa",
                "Kiên Giang",
                "Kon Tum",
                "Lai Châu",
                "Lâm Đồng",
                "Lạng Sơn",
                "Lào Cai",
                "Long An",
                "Nam Định",
                "Nghệ An",
                "Ninh Bình",
                "Ninh Thuận",
                "Phú Thọ",
                "Quảng Bình Quảng Nam",
                "Quảng Ngãi",
                "Quảng Ninh",
                "Quảng Trị",
                "Sóc Trăng",
                "Sơn La",
                "Tây Ninh",
                "Thái Bình",
                "Thái Nguyên",
                "Thanh Hóa",
                "Thừa Thiên Huế",
                "Tiền Giang",
                "Trà Vinh",
                "Tuyên Quang",
                "Vĩnh Long",
                "Vĩnh Phúc",
                "Yên Bái",
                "Phú Yên Cần Thơ",
                "Đà Nẵng",
                "Hải Phòng",
                "Hà Nội",
                "TP HCM",
        };

        for(String i: province){
            Province p = new Province();
            p.setProvinceName(i);
            provinceService.add(p,true);
        }
        return "redirect:/";
    }*/
/**/
    @PostMapping("/add")
    public String addTour(Model model, @ModelAttribute("tour")String tourid){
        return "redirect:/";
    }



}
