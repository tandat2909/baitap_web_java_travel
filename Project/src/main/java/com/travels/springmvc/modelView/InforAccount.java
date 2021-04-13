package com.travels.springmvc.modelView;

import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.pojo.Employees;
import org.springframework.beans.factory.annotation.Autowired;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

public class InforAccount {
    @Autowired
    Account account;
    @Autowired
    Employees employees;
    @Autowired
    Customer customer;

    String date;

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public Employees getEmployees() {
        if(employees != null && date !=null)
            employees.setBirthDay(Date.valueOf(date));
        return employees;
    }

    public void setEmployees(Employees employees) {

        employees.setBirthDay(Date.valueOf(date));
        this.employees = employees;
    }

    public Customer getCustomer() {
        if(customer != null && date !=null)
            customer.setBirthDay(Date.valueOf(date));
        return customer;
    }

    public void setCustomer(Customer customer) {

        this.customer = customer;
    }


}
