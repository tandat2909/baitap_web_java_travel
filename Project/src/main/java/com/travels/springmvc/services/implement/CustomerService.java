package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.respository.ICustomerRepository;
import com.travels.springmvc.services.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class CustomerService extends GenericsService<Customer,String> implements ICustomerService {
    @Autowired
    ICustomerRepository customerRepository;
    @Override
    public Customer getCustomerByUserName(String userName) {
        return customerRepository.getCustomerByUserName(userName);
    }

    @Override
    public Customer getCustomerByAccountId(String accountId) {
        return customerRepository.getCustomerByAccountId(accountId);
    }

    @Override
    public void update(Customer entity) throws Exception  {
        customerRepository.isvalid(entity);
        super.update(entity);
    }
}
