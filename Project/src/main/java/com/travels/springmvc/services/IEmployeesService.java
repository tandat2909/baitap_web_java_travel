package com.travels.springmvc.services;

import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.services.implement.GenericsService;



public interface IEmployeesService extends IGenericsService<Employees, String> {

    void removeEmployee(String employeeId) throws Exception;
}
