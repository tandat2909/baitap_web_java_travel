package com.travels.springmvc.respository;

import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.pojo.News;
import org.springframework.stereotype.Repository;

@Repository
public interface ICustomerRepository extends IGenericsRepository<Customer,String>  {

    Customer getCustomerByUserName(String userName);
    Customer getCustomerByAccountId(String accountId);

    public boolean isvalid(Customer obj) throws Exception;

}
