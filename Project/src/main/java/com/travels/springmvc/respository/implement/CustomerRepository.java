package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.respository.IAccountRepository;
import com.travels.springmvc.respository.ICustomerRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


@Repository
@Transactional
public class CustomerRepository extends GenericsRepository<Customer,String> implements ICustomerRepository {
    @Autowired
    IAccountRepository accountRepository;
    @Override
    public Customer getCustomerByUserName(String userName) {
        return (Customer) currentSession().createQuery("FROM Customer where account.userName = :u").setParameter("u",userName).getResultList().get(0);
    }
    @Override
    public Customer getCustomerByAccountId(String accountId) {
        return (Customer) currentSession().createQuery("FROM Customer where account.accountId = :acid").setParameter("acid",accountId).getResultList().get(0);
    }
}
