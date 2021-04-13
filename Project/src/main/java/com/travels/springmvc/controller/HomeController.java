package com.travels.springmvc.controller;

import com.travels.springmvc.services.IAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.Map;

@Controller
public class HomeController {
    @Autowired
    private IAccountService accountService;

    @RequestMapping(value = {"/", "/home"})
    public String index(Model model) {
        System.out.println("tìm kiém:\n"+accountService.getElementById("ssss"));
        model.addAttribute("lsaccount",accountService.getAll());
        return "";
    }

    @RequestMapping("/TrangChu")
    public String test(Model model) {
        return "TrangChu";
    }
    }

