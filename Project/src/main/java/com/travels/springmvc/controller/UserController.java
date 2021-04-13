package com.travels.springmvc.controller;

import com.travels.springmvc.modelView.InforAccount;
import com.travels.springmvc.services.IAccountService;
import com.travels.springmvc.services.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

    @Autowired
    IAccountService accountService;
    @Autowired
    InforAccount inforAccount;

    @Autowired
    IRoleService roleService;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @GetMapping(value = "/login")
    public String loginCustomer(Model model) {
        return "template_login";
    }


    @GetMapping(value = "/SignUp")
    public String registerProcess(Model model){
        model.addAttribute("user", inforAccount);
        return "template_signup";
    }

    @PostMapping(value = "/SignUp")
    public String registerProcessPOST(@ModelAttribute(name = "user") InforAccount user,
            BindingResult result) {

        //System.out.println("user:" +user.getAccount().getUserName());
        if (result.hasErrors()){
            //System.out.println(user.getCustomer().getCcid());
            return "redirect:/login";
        }

        //System.out.println("tai khona"+user.getAccount().getUserName() +" " + user.getCustomer());
        accountService.createAccount(user.getAccount(), user.getCustomer());
        return "redirect:/login";
    }
}
