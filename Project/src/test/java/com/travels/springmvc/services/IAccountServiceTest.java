package com.travels.springmvc.services;

import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.services.implement.AccountService;
import com.travels.springmvc.services.implement.CustomerService;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.test.context.junit.jupiter.SpringExtension;
import org.springframework.test.context.junit4.SpringRunner;


import java.sql.Date;

import static org.junit.jupiter.api.Assertions.*;

class IAccountServiceTest {

    IAccountService accountService ;

    @BeforeAll
    void setup(){
        accountService = Mockito.mock(IAccountService.class);
    }

    @Test
    void createAccount() throws NoSuchFieldException {
        Account a = new Account();
        a.setUserName("tandat");
        a.setPw("3234234234");
        Customer c = new Customer();
        c.setEmail("@#23");
        c.setCcid("232323");
        c.setPhoneNumber("@234234234");
        c.setBirthDay(Date.valueOf("2000-2-2"));
        c.setFirstName("@323");
        c.setLastName("@#24234");
    }

    @Test
    void activeAccountByGmail() {
    }

    @Test
    void isCheckActive() {
    }

    @Test
    void testIsCheckActive() {
    }
}