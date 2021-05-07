package com.travels.springmvc.services.implement;

import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.respository.IEmployeesRepository;
import com.travels.springmvc.services.IEmployeesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeesService extends GenericsService<Employees, String> implements IEmployeesService {

    @Autowired
    IEmployeesRepository employeesRepository;

    @Override
    public Employees getEmployeesByUserName(String userName) {
        return null;
    }

    @Override
    public Employees getEmployeesByAccountId(String accountId) {
        return null;
    }

    @Override
    public void removeEmployee(String employeeId) throws Exception{
        employeesRepository.removeEmployee(employeeId);
    }
}
