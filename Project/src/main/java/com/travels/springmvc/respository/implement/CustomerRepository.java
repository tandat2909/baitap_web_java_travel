package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.respository.Enum.ESysconfig;
import com.travels.springmvc.respository.IAccountRepository;
import com.travels.springmvc.respository.ICustomerRepository;
import com.travels.springmvc.respository.ISysConfigRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.Persistence;
import javax.persistence.criteria.CriteriaQuery;
import java.sql.Date;
import java.util.regex.Pattern;


@Repository
@Transactional
public class CustomerRepository extends GenericsRepository<Customer,String> implements ICustomerRepository {
    @Autowired
    IAccountRepository accountRepository;

    @Autowired
    ISysConfigRepository sysConfigRepository;
    @Override
    public Customer getCustomerByUserName(String userName) {
        try{
            return (Customer) currentSession().createQuery("FROM Customer where account.userName = :u").setParameter("u",userName).getResultList().get(0);
        }catch (Exception e){
            System.err.println("=======error getCustomerByUserName()=====");
            e.printStackTrace();
            return null;
        }

    }
    @Override
    public Customer getCustomerByAccountId(String accountId) {
        try
        {
            return (Customer) currentSession().createQuery("FROM Customer where account.accountId = :acid").setParameter("acid",accountId).getResultList().get(0);

        }catch (Exception e){
            System.err.println("=======error getCustomerByAccountId()=====");
            e.printStackTrace();
            return null;
        }
     }

    @Override
    public boolean isvalid(Customer customer) throws Exception {
        String EMAIL_PATTERN = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-z]{2,}$";
        String PHONENUMBERVN_PATTENR = "(84|0[3|2|5|7|8|9])+([0-9]{8})\\b";
        String CCID_PATTENR = "[0-9]{9}|[0-9]{12}";
        java.sql.Date timecheck = Date.valueOf(java.time.LocalDate.now());
        timecheck.setYear(timecheck.getYear() - Integer.parseInt(sysConfigRepository.getElementById(ESysconfig.AAR.name()).getValue()));

        if (customer.getEmail() == null || !Pattern.matches(EMAIL_PATTERN, customer.getEmail()))
            throw new Exception("Email không hợp lệ");
        if (customer.getPhoneNumber() == null || !Pattern.matches(PHONENUMBERVN_PATTENR, customer.getPhoneNumber()))
            throw new Exception("Số điện thoại bắt đầu (84 , 03 ,05 , 07 , 09, 02) và 9 số tiếp theo ");
        if (customer.getLastName() == null || customer.getLastName().isEmpty())
            throw new Exception("Last name Không được để trống");
        if (customer.getFirstName() == null || customer.getFirstName().isEmpty())
            throw new Exception("first name Không được để trống");
        if (customer.getCcid() == null || !Pattern.matches(CCID_PATTENR, customer.getCcid()))
            throw new Exception("CMND/CCCD/CCID 9 số hoặc 12 số");
        if (customer.getBirthDay() == null)
            throw new Exception("Không để trống trường ngày sinh");
        if (timecheck.getTime() - customer.getBirthDay().getTime() < 0)
            throw new Exception("Ngày sinh nhỏ hơn " + sysConfigRepository.getElementById(ESysconfig.AAR.name()) + " không được đăng ký");
        if(customer.getGender() == null )
            throw new Exception("không để trống trường giới tính");
        if(customer.getAddress() == null )
            throw new Exception("không để trống trường địa chỉ");

        return true;
    }



}

