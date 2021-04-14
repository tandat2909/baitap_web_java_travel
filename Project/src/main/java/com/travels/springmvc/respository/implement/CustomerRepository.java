package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.respository.ICustomerRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Repository
public class CustomerRepository extends GenericsRepository<Customer,String> implements ICustomerRepository {

}
