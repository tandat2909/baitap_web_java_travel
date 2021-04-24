package com.travels.springmvc.respository;


import com.travels.springmvc.modelView.InforAccount;
import com.travels.springmvc.pojo.Account;

import java.util.List;


public interface IAccountRepository extends IGenericsRepository<Account,String> {
    boolean createAccount(Account account,Object o) throws Exception;
    boolean isUserNameExist(String userName);
    boolean isUserNameExist(Account account);
    boolean isAccountExist(Account account);
    boolean isCheckActive(String id) throws NullPointerException;
    boolean isCheckActive(Account account) throws NullPointerException;
    Account getAccountByUserName(String userName);

}
