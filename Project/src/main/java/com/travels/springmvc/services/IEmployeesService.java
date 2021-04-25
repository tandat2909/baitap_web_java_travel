package com.travels.springmvc.services;

import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.services.implement.GenericsService;



public interface IEmployeesService extends IGenericsService<Employees, String> {

    void remove(String employeeId) throws Exception;
}
