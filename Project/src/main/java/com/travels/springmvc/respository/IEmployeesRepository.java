package com.travels.springmvc.respository;

import com.travels.springmvc.pojo.Employees;

public interface IEmployeesRepository extends IGenericsRepository<Employees,String> {
    void removeEmployee(String employeeId) throws Exception;
}
