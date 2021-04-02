package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.respository.IEmployeesRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class EmployeesRepository extends GenericsRepository<Employees,String> implements IEmployeesRepository {
}
