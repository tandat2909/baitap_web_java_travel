package com.travels.springmvc.services;

import com.travels.springmvc.pojo.Customer;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public interface ICustomerService extends IGenericsService<Customer, String> {

}
