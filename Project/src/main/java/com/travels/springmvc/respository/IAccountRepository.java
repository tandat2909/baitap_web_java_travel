package com.travels.springmvc.respository;


import com.travels.springmvc.pojo.Account;

import java.util.List;


public interface IAccountRepository extends IGenericsRepository<Account,String> {
    List<Account> getAccountAll() ;
    boolean CreateAccount(Account account);

}
