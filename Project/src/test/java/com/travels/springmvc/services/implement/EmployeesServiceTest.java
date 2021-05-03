package com.travels.springmvc.services.implement;


import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.services.IEmployeesService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;


import static org.junit.jupiter.api.Assertions.*;
import static org.junit.jupiter.api.Assertions.assertTrue;

@SpringBootTest
public class EmployeesServiceTest {
    @Autowired
    IEmployeesService employeesService;

    @Test
    void remove() {

        try {
            employeesService.removeEmployee("15");
        } catch (Exception e) {
            e.printStackTrace();
        }

    }
}
