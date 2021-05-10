package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.respository.Enum.ESysconfig;
import com.travels.springmvc.respository.IAccountRepository;
import com.travels.springmvc.respository.IBookingRepository;
import com.travels.springmvc.respository.IEmployeesRepository;
import com.travels.springmvc.respository.ISysConfigRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.sql.Date;
import java.util.List;
import java.util.regex.Pattern;

@Transactional
@Repository
public class EmployeesRepository extends GenericsRepository<Employees,String> implements IEmployeesRepository {

    @Autowired
    IBookingRepository bookingRepository;
    @Autowired
    IAccountRepository accountRepository;
    @Autowired
    ISysConfigRepository sysConfigRepository;


    public boolean checkEmployeeIdInBooking(String employeeId){
        List<Booking> result = currentSession().createQuery("From Booking where employee.employeeId = :i")
                .setParameter("i", employeeId).getResultList();
        return result.size()>0;

    }

    @Override
    public Employees getEmployeesByUserName(String userName) {
        return (Employees) currentSession().createQuery("FROM Employees where account.userName = :u").setParameter("u",userName).getResultList().get(0);
    }

    @Override
    public Employees getEmployeesByAccountId(String accountId) {
        return (Employees) currentSession().createQuery("FROM Employees where account.accountId = :acid").setParameter("acid",accountId).getResultList().get(0);
    }

    @Override
    public void removeEmployee(String employeeId) throws Exception{
        try{
            if(!checkEmployeeIdInBooking(employeeId)) {
                Employees employees = getElementById(employeeId);
                //List<Account> ac = (List<Account>) employees.getAccount();
                Account ac = employees.getAccount();
                ac.setStatus(false);
                currentSession().update(ac);
                remove(employees);
            }
        } catch (Exception ex){
            throw new Exception("lỗi không xóa được");
        }

    }
    @Override
    public boolean isvalid(Employees employees) throws Exception {
        String EMAIL_PATTERN = "[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-z]{2,}$";
        String PHONENUMBERVN_PATTENR = "(84|0[3|2|5|7|8|9])+([0-9]{8})\\b";
        String CCID_PATTENR = "[0-9]{9}|[0-9]{12}";
        java.sql.Date timecheck = Date.valueOf(java.time.LocalDate.now());
        timecheck.setYear(timecheck.getYear() - Integer.parseInt(sysConfigRepository.getElementById(ESysconfig.AAR.name()).getValue()));

        if (employees.getEmail() == null || !Pattern.matches(EMAIL_PATTERN, employees.getEmail()))
            throw new Exception("Email không hợp lệ");
        if (employees.getPhoneNumber() == null || !Pattern.matches(PHONENUMBERVN_PATTENR, employees.getPhoneNumber()))
            throw new Exception("Số điện thoại bắt đầu (84 , 03 ,05 , 07 , 09, 02) và 9 số tiếp theo ");
        if (employees.getLastName() == null || employees.getLastName().isEmpty())
            throw new Exception("Last name Không được để trống");
        if (employees.getFirstName() == null || employees.getFirstName().isEmpty())
            throw new Exception("first name Không được để trống");
        if (employees.getCcid() == null || !Pattern.matches(CCID_PATTENR, employees.getCcid()))
            throw new Exception("CMND/CCCD/CCID 9 số hoặc 12 số");
        if (employees.getBirthDay() == null)
            throw new Exception("Không để trống trường ngày sinh");
        if (timecheck.getTime() - employees.getBirthDay().getTime() < 0)
            throw new Exception("Ngày sinh nhỏ hơn " + sysConfigRepository.getElementById(ESysconfig.AAR.name()) + " không được đăng ký");
        if(employees.getGender() == null )
            throw new Exception("không để trường giới tính");
        if(employees.getAddress() == null )
            throw new Exception("không để trường địa chỉ");

        return true;
    }
}
