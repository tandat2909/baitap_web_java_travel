package com.travels.springmvc.services.implement;

import com.travels.springmvc.modelView.InforAccount;
import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.respository.Enum.ESysconfig;
import com.travels.springmvc.respository.IAccountRepository;
import com.travels.springmvc.respository.implement.AccountRepository;
import com.travels.springmvc.services.IAccountService;
import com.travels.springmvc.services.IRoleService;
import com.travels.springmvc.services.ISysconfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

@Service("userDetailsService")
@Transactional
public class AccountService extends GenericsService<Account, String> implements IAccountService {

    @Autowired
    IAccountRepository accountRepository;

    @Override
    public boolean createAccount(Account account, Object obj) throws Exception {
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

    @Override
    public Account getAccountByUserName(String userName) {
        try {
            return getElementsByKeyWordOnField(userName, Account.class.getDeclaredField("userName")).get(0);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
            return null;
        }

    }


    @Override
    @Transactional(readOnly = true)
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {

        Account users = null;
        try {
            users = getElementsByKeyWordOnField(username, Account.class.getDeclaredField("userName")).get(0);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
        if (users == null)
            throw new UsernameNotFoundException("User không tồn tại!");
        Set<GrantedAuthority> authorities = new HashSet<>();
        authorities.add(new SimpleGrantedAuthority(users.getRoleID()));
        //System.out.println("status account: " + users.getStatus());

        return new org.springframework.security.core.userdetails.User(
                users.getUserName(), users.getPw(), users.getStatus(), true, true, users.getStatus(), authorities);

    }

}
