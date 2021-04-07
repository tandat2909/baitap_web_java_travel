package com.travels.springmvc.controller;

import com.travels.springmvc.modelView.InforAccount;
import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.services.IAccountService;
import com.travels.springmvc.services.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.sql.Date;
import java.text.SimpleDateFormat;


@Controller
public class RegisterAccount {

    @Autowired
    IAccountService accountService;
    @Autowired
    IRoleService roleService;



    @RequestMapping(value = "/register")
    public String accountCustomer(Model model){
        InforAccount inforAccount = new InforAccount();
        System.out.println("ok voo nef");
        model.addAttribute("account",inforAccount);
        return "RegisterAccount";
    }

    @RequestMapping(value = "/register/add",method = RequestMethod.POST)
    public String formPost(Model model, @ModelAttribute(value = "account") InforAccount inforAccount){
        System.out.println(inforAccount);
        Account account = new Account();
        account.setUserName(inforAccount.getUsername());
        account.setPw(inforAccount.getPw());
        Customer customer = new Customer();
        customer.setPhoneNumber(inforAccount.getPhoneNumber());
        customer.setEmail(inforAccount.getEmail());
        customer.setCcid(Integer.parseInt(inforAccount.getCcid()));


        return "redirect:/home";
    }

}
