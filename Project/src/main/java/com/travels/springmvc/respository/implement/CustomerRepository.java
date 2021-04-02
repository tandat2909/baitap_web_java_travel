package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.respository.ICustomerRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class CustomerRepository extends GenericsRepository<Customer,String> implements ICustomerRepository {
}
