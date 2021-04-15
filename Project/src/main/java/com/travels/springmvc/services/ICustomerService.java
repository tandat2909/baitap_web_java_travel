package com.travels.springmvc.services;

import com.travels.springmvc.pojo.Customer;

public interface ICustomerService extends IGenericsService<Customer,String> {

    Customer getCustomerByUserName(String userName);
    Customer getCustomerByAccountId(String accountId);

}
