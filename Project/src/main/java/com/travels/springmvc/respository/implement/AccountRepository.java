package com.travels.springmvc.respository.implement;


import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.respository.IAccountRepository;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public class AccountRepository extends GenericsRepository<Account,String> implements IAccountRepository {
    @Autowired
    @Qualifier("getSessionFactory")
    private LocalSessionFactoryBean sessionFactory;


    @Override
    public List<Account> getAccountAll() {

        Session session = sessionFactory.getObject().getCurrentSession();
        System.out.println(session.isOpen());
        List<Account> accounts = session.createQuery("from Account").getResultList();
        return accounts;
    }

    public boolean CreateAccount(Account account){
        try {
            Session session = sessionFactory.getObject().getCurrentSession();
            session.save(account);
            return true;
        }
        catch(Exception e){
            e.printStackTrace();
            return false;
        }

    }


}
