package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.pojo.Employees;
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

    public boolean checkEmployeeIdInBooking(String employeeId){
        List<Booking> result = currentSession().createQuery("From Booking where employee.employeeId = :i")
                .setParameter("i", employeeId).getResultList();
        if(result.size() < 0 || result.isEmpty() || result == null)
            return true;
        return false;
    }

    @Override
    public void remove(String employeeId) throws Exception{
        try{
            if(checkEmployeeIdInBooking(employeeId) == true)
                currentSession().remove(getElementById(employeeId));
        } catch (Exception ex){
            throw new Exception("lỗi không xóa được");
        }

    }
}
