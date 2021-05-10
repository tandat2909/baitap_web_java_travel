package com.travels.springmvc.services.implement;


import com.travels.springmvc.modelView.InforAccount;
import com.travels.springmvc.modelView.Utils;
import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.services.IAccountService;
import com.travels.springmvc.services.IEmployeesService;
import org.junit.Before;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.context.annotation.Bean;

import java.util.Date;
import java.util.UUID;

import static org.junit.jupiter.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.assertTrue;

@SpringBootTest
public class EmployeesServiceTest {
    Employees employees;
    InforAccount inforAccount ;

    @Autowired
    IEmployeesService employeesService;
    @Autowired
    IAccountService accountService;




    @BeforeEach
     void setup() {
        inforAccount = new InforAccount();
        inforAccount.setUserName("HoangBuu");
        inforAccount.setEmail("h@b.com");
        inforAccount.setCCID("013884433");
        inforAccount.setPhoneNumber("0387652400");
        inforAccount.setConfirmPassword("HoangBuu@123");
        inforAccount.setPassword("HoangBuu@123");
        inforAccount.setFirstName("Hoang");
        inforAccount.setLastName("Buu");
        inforAccount.setBirthDay("2000-10-03");
    }
    @Test
    void createAccount() throws Exception {

        assertTrue(accountService.createAccount(inforAccount.getAccount(),inforAccount.getCustomer()));
        assertEquals(accountService.getAccountByUserName(inforAccount.getUserName()).getUserName(),inforAccount.getUserName());
    }
    @Test
    void remove() {
        try {
            Employees employees = employeesService.getElementById("2");
            employeesService.remove(employees);
        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    @Test
    void update(){
        try{
            employees.setGender("nam");
            employeesService.update(employees);
            System.out.println("sửa thành công");
        } catch (Exception e){
            e.printStackTrace();
        }
    }
}
