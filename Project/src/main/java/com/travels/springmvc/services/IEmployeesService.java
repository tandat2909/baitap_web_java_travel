package com.travels.springmvc.services;

import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.services.implement.GenericsService;



public interface IEmployeesService extends IGenericsService<Employees, String> {
    Employees getEmployeesByUserName(String userName);
    Employees getEmployeesByAccountId(String accountId);
    void removeEmployee(String employeeId) throws Exception;

    @Override
    void update(Employees entity) throws Exception;
}
