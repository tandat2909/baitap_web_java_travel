package com.travels.springmvc.controller.API;

import com.travels.springmvc.pojo.Landmarks;
import com.travels.springmvc.pojo.Province;
import com.travels.springmvc.services.ILandMarkService;
import com.travels.springmvc.services.IProvinceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.*;

@RestController
@RequestMapping("/api/landMark")
public class APILandMark {

    @Autowired
    IProvinceService provinceService;
    @Autowired
    ILandMarkService landMarkService;

    @GetMapping("")

    public List<String> getlandMarkByProvinceId(@RequestParam("provinceId") String provinceId){

        Province prov = provinceService.getElementById(provinceId);
        List<String> datas = new ArrayList<>();
        prov.getLandmarks().forEach(i ->datas.add(i.getLandMarkId()+":"+i.getLandMarkName())
        );
        System.err.println("============================");
        System.err.println(provinceId);
        datas.forEach(i-> System.err.println(i));
        System.err.println("============================");
        return datas;
    }
}
