/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.travels.springmvc.services;


import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Customer;
import java.sql.Date;
import java.util.Collection;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import static org.mockito.Mockito.*;

/**
 *
 * @author Huynh Thi Tuyet Ngoc
 */
public class TestSignUp {
    
    private IAccountService service;
    
    @BeforeEach
    public void setUp(){
        this.service = mock(IAccountService.class);
    }
    
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
        
        when(service.createAccount(account, customer)).thenReturn(Boolean.FALSE);
        Assertions.assertFalse(service.createAccount(account, customer));
        
    }
}
