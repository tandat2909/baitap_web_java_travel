package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.services.IAccountService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class AccountService extends GenericsService<Account,String> implements IAccountService {


}
