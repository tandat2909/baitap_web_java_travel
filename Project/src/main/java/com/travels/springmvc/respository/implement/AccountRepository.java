package com.travels.springmvc.respository.implement;


import com.travels.springmvc.modelView.InforAccount;
import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.respository.Enum.ERole;
import com.travels.springmvc.respository.Enum.ESysconfig;
import com.travels.springmvc.respository.IAccountRepository;
import com.travels.springmvc.respository.IRoleRepository;
import com.travels.springmvc.respository.ISysConfigRepository;
import com.travels.springmvc.services.ISysconfigService;
import org.apache.commons.lang.NullArgumentException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Date;
import java.util.List;
import java.util.UUID;
import java.util.regex.Pattern;

@Repository
@Transactional
public class AccountRepository extends GenericsRepository<Account, String> implements IAccountRepository {

    @Autowired
    ISysConfigRepository sysConfigRepository;
    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @Override
    public boolean createAccount(Account account, Object o) throws Exception {
        Session session = currentSession();

        String EMAIL_PATTERN = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,}$";
        String PHONENUMBERVN_PATTENR = "(84|0[3|2|5|7|8|9])+([0-9]{8})\\b";
        String CCID_PATTENR = "[0-9]{9}|[0-9]{12}";
        java.sql.Date timecheck = Date.valueOf(java.time.LocalDate.now());
        timecheck.setYear(timecheck.getYear() - Integer.parseInt(sysConfigRepository.getElementById(ESysconfig.AAR.name()).getValue()));
        if (isAccountValid(account)) {

            if (o instanceof Customer) {
                Customer customer = (Customer) o;
                if (customer.getAccount() != null)
                    throw new Exception("Không thể tạo thông tin khách hàng");
                if (account.getRole() != null)
                    if (account.getRole().getRoleId().equals(ERole.ROLE_CUSTOMER.name()))
                        throw new Exception("Không thể tạo tài khoản với role " + account.getRoleID());
                if (account.getRoleID() != null)
                    if (!account.getRoleID().equals(ERole.ROLE_CUSTOMER.name()))
                        throw new Exception("Không thể tạo tài khoản với role " + account.getRoleID());
                if (customer.getEmail() == null || !Pattern.matches(EMAIL_PATTERN, customer.getEmail()))
                    throw new Exception("Email không hợp lệ");
                if (customer.getPhoneNumber() == null || !Pattern.matches(PHONENUMBERVN_PATTENR, customer.getPhoneNumber()))
                    throw new Exception("Số điện thoại bắt đầu (84 , 03 ,05 , 07 , 09, 02) và 9 số tiếp theo ");
                if (customer.getLastName() == null || customer.getLastName().isEmpty())
                    throw new Exception("Last name Không được để trống");
                if (customer.getCcid() == null || !Pattern.matches(CCID_PATTENR, customer.getCcid()))
                    throw new Exception("CMND/CCCD/CCID 9 số hoặc 12 số");
                if (customer.getBirthDay() == null)
                    throw new Exception("Không để trống trường ngày sinh");
                if (timecheck.getTime() - customer.getBirthDay().getTime() < 0)
                    throw new Exception("Ngày sinh nhỏ hơn " + sysConfigRepository.getElementById(ESysconfig.AAR.name()) + " không được đăng ký");
                if (customer.getCustomerId() == null || customer.getCustomerId().isEmpty()) {
                    customer.setCustomerId(UUID.randomUUID().toString());
                }
                customer.setAccount(account);
                account.setRoleID(ERole.ROLE_CUSTOMER.name());
            }

            if (o instanceof Employees) {
                Employees employees = (Employees) o;
                if (employees.getAccount() != null)
                    throw new Exception("Không thể tạo thông tin khách hàng");
                if (account.getRole() != null)
                    if (account.getRole().getRoleId().equals(ERole.ROLE_CUSTOMER.name()))
                        throw new Exception("Không thể tạo tài khoản với role " + account.getRoleID());
                if (account.getRoleID() != null)
                    if (!account.getRoleID().equals(ERole.ROLE_CUSTOMER.name()))
                        throw new Exception("Không thể tạo tài khoản với role " + account.getRoleID());
                if (employees.getEmail() == null || !Pattern.matches(EMAIL_PATTERN, employees.getEmail()))
                    throw new Exception("Email không hợp lệ");
                if (employees.getPhoneNumber() == null || !Pattern.matches(PHONENUMBERVN_PATTENR, employees.getPhoneNumber()))
                    throw new Exception("Số điện thoại bắt đầu (84 , 03 ,05 , 07 , 09, 02) và 9 số tiếp theo ");
                if (employees.getLastName() == null || employees.getLastName().isEmpty())
                    throw new Exception("Last name Không được để trống");
                if (employees.getCcid() == null || !Pattern.matches(CCID_PATTENR, employees.getCcid()))
                    throw new Exception("CMND/CCCD/CCID 9 số hoặc 12 số");
                if (employees.getBirthDay() == null)
                    throw new Exception("Không để trống trường ngày sinh");

                if (timecheck.getTime() - employees.getBirthDay().getTime() < 0)
                    throw new Exception("Ngày sinh nhỏ hơn " + sysConfigRepository.getElementById(ESysconfig.AAR.name()) + " không được đăng ký");

                if (employees.getEmployeeId() == null || employees.getEmployeeId().isEmpty()) {
                    employees.setEmployeeId(UUID.randomUUID().toString());
                }
                employees.setAccount(account);
                account.setRoleID(ERole.ROLE_EMPLOYEE.name());

            }
            account.setPw(bCryptPasswordEncoder.encode(account.getPw()));
            account.setAccountId(UUID.randomUUID().toString());
            // kích hoạt tài khoản
            account.setStatus(true);
            session.save(account);
            session.save(o);
            return true;
        }
        return false;
    }


    public boolean isAccountValid(Account account) throws Exception {
        String USERNAME_PATTERN = "[a-zA-Z0-9]{5,}";
        String PASSWORD_PATTERN = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$";
        if (account == null)
            throw new NullPointerException("thông tin không được để trống");
        if (account.getUserName() == null || !Pattern.matches(USERNAME_PATTERN, account.getUserName()))
            throw new Exception("Không được để trống và trên 5 ký tự ");
        if (isUserNameExist(account))
            throw new Exception("User tồn tại");
        if (account.getPw() == null || !Pattern.matches(PASSWORD_PATTERN, account.getPw()))
            throw new Exception("Password Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters");
        if (account.getConfirmPw() == null || !account.getPw().equals(account.getConfirmPw()))
            throw new Exception("Xác nhận password sai");
        return true;
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
        if (id == null || id.isEmpty())
            throw new NullPointerException("Lỗi không có ID");
        Account account = getElementById(id);
        if (account == null) {
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

    @Override
    public Account getAccountByUserName(String userName) {
        try {
            return getElementsByKeyWordOnField(userName, Account.class.getDeclaredField("userName")).get(0);
        } catch (NoSuchFieldException e) {
            System.err.println("Không có thông tin account của user: " + userName);
            return null;
        }
    }


}
