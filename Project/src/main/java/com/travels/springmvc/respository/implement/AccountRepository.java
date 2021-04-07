package com.travels.springmvc.respository.implement;


import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.respository.Enum.ERole;
import com.travels.springmvc.respository.IAccountRepository;
import com.travels.springmvc.respository.IRoleRepository;
import org.apache.commons.lang.NullArgumentException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.UUID;

@Repository
@Transactional
public class AccountRepository extends GenericsRepository<Account, String> implements IAccountRepository {

    @Autowired
    IRoleRepository roleRepository;

    @Override
    public boolean createAccount(Account account, Object o) {
        Session session = currentSession();
        try {
            if (!isUserNameExist(account)) {
                if (o instanceof Customer) {
                    Customer customer = (Customer) o;
                    try{
                        if(customer.getAccount() != null)throw new Exception();
                        if (customer.getCustomerId() == null || customer.getCustomerId().isEmpty()){
                            customer.setCustomerId(UUID.randomUUID().toString());
                            account.setRoleID(roleRepository.getRoleByEnum(ERole.customer));
                            customer.setAccount(account);
                        }
                    }catch (Exception exception){
                        throw new Exception("Khách hàng đã có tài khoản");
                    }
                }


                if (o instanceof Employees) {
                    Employees employees = (Employees) o;
                    try{
                        if(employees.getAccount() != null) throw new Exception();
                        if (employees.getEmployeeId() == null || employees.getEmployeeId().isEmpty()){
                            account.setRoleID(roleRepository.getRoleByEnum(ERole.employee));
                            employees.setEmployeeId(UUID.randomUUID().toString());
                            employees.setAccount(account);
                        }
                    }catch (Exception exception){
                        throw new Exception("Nhân viên dã có tài khoản");
                    }
                }
                if (account.getAccountId() == null || account.getAccountId().isEmpty())
                    account.setAccountId(UUID.randomUUID().toString());

                session.save(account);
                session.save(o);
                return true;
            }
            System.err.println("createAccount Error: username đã tồn tại");
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("createAccount Error: " + e.getMessage());
            return false;
        }
    }

    @Override
    public boolean isUserNameExist(String userName) {
        try {
            if (userName == null || userName.isEmpty()) throw new Exception();
            List<Account> a = getElementsByKeyWordOnField(userName, Account.class.getDeclaredField("userName"));
            return a.size() > 0;
        } catch (NoSuchFieldException e) {
            System.err.println("Lỗi không có field userName trong class " + getClassType().getSimpleName());
            System.err.println(e.getMessage());
            return false;
        } catch (Exception exception) {
            System.err.println("Lỗi không có userName: " + userName);
            return false;
        }
    }

    @Override
    public boolean isUserNameExist(Account account) {
        return isUserNameExist(account.getUserName());
    }

    @Override
    public boolean isAccountExist(Account account) {
        try {
            if (account != null)
                return getElementById(account.getAccountId()) != null;
            return false;
        } catch (NullPointerException exception) {
            System.err.println("isAccountExist Error: Account field username is Null ");
            return false;
        }

    }

    @Override
    public boolean isCheckActive(String id) throws NullPointerException {
        if(id == null ||id.isEmpty())
            throw new NullPointerException("Lỗi không có ID");
        Account account = getElementById(id);
        if(account == null){
            throw new NullPointerException("Lỗi không có tài khoản với id: " + id);
        }
        return account.getStatus();
    }

    @Override
    public boolean isCheckActive(Account account) throws NullPointerException {
        try {
            if (account != null)
                return isCheckActive(account.getAccountId());
            throw new NullArgumentException("isCheckActive Error: param null");
        } catch (NullPointerException exception) {
            System.err.println("isCheckActive Error: Account field id is Null ");
            throw new NullPointerException("isCheckActive Error: field accountId null");
        }


    }



}
