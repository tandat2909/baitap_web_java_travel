package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.respository.IAccountRepository;
import com.travels.springmvc.respository.IBookingRepository;
import com.travels.springmvc.respository.IEmployeesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Transactional
@Repository
public class EmployeesRepository extends GenericsRepository<Employees,String> implements IEmployeesRepository {

    @Autowired
    IBookingRepository bookingRepository;
    @Autowired
    IAccountRepository accountRepository;


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

}
