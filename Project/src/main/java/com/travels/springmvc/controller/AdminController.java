package com.travels.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @RequestMapping(value = {"","/index","/home"})
    public String index(){
        return "TrangAdmin";
    }
}

