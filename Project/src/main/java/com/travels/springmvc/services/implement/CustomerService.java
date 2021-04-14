package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.respository.implement.CustomerRepository;
import com.travels.springmvc.services.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class CustomerService extends GenericsService<Customer,String> implements ICustomerService {

}
