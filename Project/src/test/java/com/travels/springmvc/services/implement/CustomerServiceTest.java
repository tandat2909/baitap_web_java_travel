package com.travels.springmvc.services.implement;

import com.travels.springmvc.modelView.InforAccount;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.services.IAccountService;
import com.travels.springmvc.services.ICustomerService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

@SpringBootTest
public class CustomerServiceTest {

    @Autowired
    ICustomerService customerService;
    @Autowired
    IAccountService accountService;


    InforAccount inforAccount ;
    @BeforeEach
    void setup() {
        inforAccount = new InforAccount();
        inforAccount.setUserName("PhanHuy");
        inforAccount.setEmail("p@h.com");
        inforAccount.setCCID("077884433");
        inforAccount.setPhoneNumber("0397652400");
        inforAccount.setConfirmPassword("PhanHuy@123");
        inforAccount.setPassword("PhanHuy@123");
        inforAccount.setFirstName("Phan");
        inforAccount.setLastName("Huy");
        inforAccount.setBirthDay("2000-11-03");
    }
    @Test
    void createAccount() throws Exception {
        assertTrue(accountService.createAccount(inforAccount.getAccount(),inforAccount.getCustomer()));
        assertEquals(accountService.getAccountByUserName(inforAccount.getUserName()).getUserName(),inforAccount.getUserName());
    }

    @Test
    void update(){
        try {
            Customer customer = customerService.getCustomerByUserName("PhanHuy");
           customer.setGender("nam");
            customerService.update(customer);
            System.out.println("sửa thành công");
        } catch (Exception e){
            e.printStackTrace();
        }
    }

    @Test
    void delete(){
        try{
            customerService.remove(customerService.getElementById("63ab26ea-6287-47ed-ae74-3903de43f2cc"));
        } catch (Exception e){
            e.printStackTrace();
        }
    }

}
