package com.travels.springmvc.services;

import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Employees;

public interface IAccountService extends IGenericsService<Account,String> {
    boolean createAccount(Account account, Object obj);
    boolean activeAccountByGmail(String idAccount);
    boolean isCheckActive(String id) throws NullPointerException;
    boolean isCheckActive(Account account) throws NullPointerException;

}
