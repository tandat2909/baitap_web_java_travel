package com.travels.springmvc.controller;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.services.IAccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonValue;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class LoginController {

    @Autowired
    IAccountService accountService;
    @RequestMapping(value = "/login")
    void login(){

    }

    @RequestMapping(value = "/api")
   public String getallAccount(){
        Map<String,Account> hac = new HashMap<>();
        for(Account ac :accountService.getAll()){
            Account a = new Account();
            a.setAccountId(ac.getAccountId());
            a.setUserName(ac.getUserName());
            a.setStatus(ac.getStatus());
            hac.put(a.getAccountId(),a);
        }
        String gs = new Gson().toJson(hac.values());
        return gs;
    }



}
