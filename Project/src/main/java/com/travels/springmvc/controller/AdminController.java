package com.travels.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @RequestMapping(value = {"","index","home"})
    public String index(){
        return "TrangChu";
    }
}

// TODO: 12/04/2021
// vấn đề là spring security sử lý đc 1 form login cho nhiều loại toàn khoản cùng 1 lúc trên nhiều url khác nhau
// và cần có hai or gộp lại một giao diện login lại với nhau
// tách đăng ký ra hai loại một cho admin tạo tài khoản cho employee
// 2 cho customer tạo tài khoản