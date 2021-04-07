package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.respository.IAccountRepository;
import com.travels.springmvc.services.IAccountService;
import com.travels.springmvc.services.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AccountService extends GenericsService<Account, String> implements IAccountService {

    @Autowired
    IAccountRepository accountRepository;

    @Override
    public boolean createAccount(Account account, Object obj) {
        return accountRepository.createAccount(account, obj);
    }

    @Override
    public boolean activeAccountByGmail(String idAccount) {
        return false;
    }

    @Override
    public boolean isCheckActive(String id) throws NullPointerException {
        return accountRepository.isCheckActive(id);
    }

    @Override
    public boolean isCheckActive(Account account) throws NullPointerException {
        return accountRepository.isCheckActive(account);
    }

    

}
