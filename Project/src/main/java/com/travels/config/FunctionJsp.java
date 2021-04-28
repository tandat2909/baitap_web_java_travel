package com.travels.config;

import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.services.IAccountService;
import com.travels.springmvc.services.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Configuration
@Transactional
public class FunctionJsp {
    @Autowired
    static IAccountService accountService;
    @Autowired
    static ICustomerService customerService;

    public static String getNameCustomerByUserName(String userName){
        Customer c = customerService.getCustomerByUserName(userName);
       return c.getLastName() + " " + c.getFirstName();
    }
}
