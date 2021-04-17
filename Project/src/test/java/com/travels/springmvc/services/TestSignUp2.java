/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.travels.springmvc.services;

import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.services.implement.AccountService;
import java.sql.Date;
import javax.faces.application.Application;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.PropertySource;
import org.springframework.test.context.TestPropertySource;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = WebEnvironment.MOCK, classes = Application.class)
@AutoConfigureMockMvc
@PropertySource(
  "classPath:application-integrationtest.properties")
public class TestSignUp2 {
    @Autowired
    private MockMvc mvc;
    @Autowired
    private AccountService accountService;
    
    @Test
    public void testCreateAccount(){
        Customer customer = new Customer();
        customer.setBirthDay(new Date(23/10/2000));
        customer.setFirstName("");
        customer.setLastName("lastname");
        customer.setCcid("123456789");
        Account account = new Account();
        account.setUserName("");
        account.setPw("123");
        account.setConfirmPw("123");
        
        Assertions.assertFalse(accountService.createAccount(account, customer));
    }
}
