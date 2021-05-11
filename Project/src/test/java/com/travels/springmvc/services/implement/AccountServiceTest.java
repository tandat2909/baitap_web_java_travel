package com.travels.springmvc.services.implement;

import com.travels.springmvc.modelView.InforAccount;
import com.travels.springmvc.modelView.Utils;
import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Employees;
import com.travels.springmvc.respository.Enum.ERole;
import com.travels.springmvc.respository.IAccountRepository;
import com.travels.springmvc.services.IAccountService;
import com.travels.springmvc.services.ICustomerService;
import com.travels.springmvc.services.IEmployeesService;
import com.travels.springmvc.services.IRoleService;
import org.junit.FixMethodOrder;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvFileSource;
import org.junit.runners.MethodSorters;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import static org.junit.jupiter.api.Assertions.*;


@SpringBootTest
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
class AccountServiceTest {

    @Autowired
    IAccountService accountService;

    @Autowired
    IRoleService roleService;

    @Autowired
    ICustomerService customerService;

    @Autowired
    IEmployeesService employeesService;


    @Autowired
    IAccountRepository accountRepository;
    @BeforeEach
    void setUp() {


    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void TC_1_getAll() {
        List<Account> all = accountService.getAll();
        assert all != null;
        all.forEach(System.out::println);
    }

    @Test
    void TC_2_add() {
        
    }

    @Test
    void remove() {

    }

    @Test
    void update() {
    }

    @Test
    void setValueFieldId() {
    }



    @Test
    void testAdd() {
    }

    @Test
    void getElementById() {
        Account ac= new Account();
        ac.setAccountId("123");
        ac.setUserName("admin");
        Account returnedWidget = accountService.getElementById("25a13416-bd56-47ae-a475-d8c4272a2e98");
        assertEquals(returnedWidget.getAccountId(), "25a13416-bd56-47ae-a475-d8c4272a2e98");
    }

    @Test
    void getElementsByKeyWordOnField() {
    }


    @ParameterizedTest
    @CsvFileSource(resources="/login_signup.csv")
    void createAccount(String userName, String email, String ccid, String phoneNumber,
            String confirm, String pass, String firstName, String lastName, String birthDay,String gender,String image,String messege) throws Exception {
        try{
            InforAccount inforAccount = new InforAccount();
            inforAccount.setUserName(userName);
            inforAccount.setEmail(email);
            inforAccount.setCCID(ccid);
            inforAccount.setPhoneNumber(phoneNumber);
            inforAccount.setConfirmPassword(confirm);
            inforAccount.setPassword(pass);
            inforAccount.setFirstName(firstName);
            inforAccount.setLastName(lastName);
            inforAccount.setBirthDay(birthDay);
            inforAccount.setGender(gender);
            inforAccount.setImg(image);
            Account ac = inforAccount.getAccount();
            ac.setAccountId(UUID.randomUUID().toString());
            accountService.createAccount(ac,inforAccount.getCustomer());

            //assertEquals(accountService.getAccountByUserName(inforAccount.getUserName()).getUserName(),inforAccount.getUserName());

            Account acSave = accountService.getElementById(ac.getAccountId());
            System.err.println(gender + " " + image);
            assertEquals(userName,acSave.getUserName());
            Employees esave = employeesService.getEmployeesByAccountId(ac.getUserName());
            assertEquals(email,esave.getEmail());
            assertEquals(ccid,esave.getCcid());
            assertEquals(phoneNumber,esave.getPhoneNumber());
            assertEquals(lastName,esave.getLastName());
            assertEquals(firstName,esave.getFirstName());
            assertEquals(Utils.getDateRequest(birthDay),esave.getBirthDay());
            assertEquals(gender,esave.getGender());
            assertEquals(image,image);


        }catch (Exception exception){
            //exception.printStackTrace();
            System.err.println(exception);
            assertEquals(messege,exception.getMessage());
        }
    }

    @Test
    void activeAccountByGmail() {

    }

    @Test
    void isCheckActive() {
    }

    @Test
    void testIsCheckActive() {
    }

    @Test
    void getAccountByUserName() {
        roleService.getRole(ERole.ROLE_CUSTOMER).getAccounts().forEach(System.out::println);
        //System.out.println(accountService.getAccountByUserName("tandat").getRole());
    }
    @Test
    void getAllCustomer(){
        customerService.getAll().forEach(System.err::println);
    }


}