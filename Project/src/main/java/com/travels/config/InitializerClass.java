package com.travels.config;

import com.travels.springmvc.modelView.InforAccount;
import com.travels.springmvc.modelView.TourView;
import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.respository.Enum.ERole;
import com.travels.springmvc.services.IAccountService;
import com.travels.springmvc.services.ICustomerService;
import com.travels.springmvc.services.implement.AccountService;
import com.travels.springmvc.services.implement.CustomerService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.ModelAttribute;

import java.util.UUID;

@Configuration
public class InitializerClass {
    @Bean
    public InforAccount inforAccount() {
        return new InforAccount();
    }

    @Bean
    public Account account() {
        Account a = new Account();
        a.setAccountId(UUID.randomUUID().toString());
        a.setRoleID(ERole.ROLE_CUSTOMER.name());
        return a;
    }

    @Bean
    public Employees employees() {
        return new Employees();
    }

    @Bean
    public Customer customer() {
        return new Customer();
    }
    @Bean
    public TourView tourView(){
        return new TourView();
    }

}
