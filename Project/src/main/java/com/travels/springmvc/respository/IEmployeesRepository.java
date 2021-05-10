package com.travels.springmvc.respository;

import com.travels.springmvc.pojo.Employees;

public interface IEmployeesRepository extends IGenericsRepository<Employees,String> {
    Employees getEmployeesByUserName(String userName);
    Employees getEmployeesByAccountId(String accountId);
    void removeEmployee(String employeeId) throws Exception;
    public boolean isvalid(Employees employees) throws Exception;
}
