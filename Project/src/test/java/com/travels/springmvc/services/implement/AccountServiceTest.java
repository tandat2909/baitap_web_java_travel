package com.travels.springmvc.services.implement;

import com.travels.springmvc.modelView.InforAccount;
import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.respository.Enum.ERole;
import com.travels.springmvc.respository.IAccountRepository;
import com.travels.springmvc.services.IAccountService;
import com.travels.springmvc.services.ICustomerService;
import com.travels.springmvc.services.IRoleService;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.jupiter.params.ParameterizedTest;
import org.junit.jupiter.params.provider.CsvFileSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit.jupiter.SpringExtension;

import static org.junit.jupiter.api.Assertions.*;


@SpringBootTest
class AccountServiceTest {

    @Autowired
    IAccountService accountService;

    @Autowired
    IRoleService roleService;

    @Autowired
    ICustomerService customerService;


    @Autowired
    IAccountRepository accountRepository;
    @BeforeEach
    void setUp() {
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void getAll() {
       Account ac= accountService.getElementById("9be1d83f-516d-4eef-94e5-2b3f2ac9f370");
        System.out.println(ac);
        ac.setStatus(true);
        accountService.update(ac);
        assertFalse(accountService.getElementById("9be1d83f-516d-4eef-94e5-2b3f2ac9f370").getStatus());

    }

    @Test
    void saveOrUpdate() {
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
    void add() {
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
            String confirm, String pass, String firstName, String lastName, String birthDay) throws Exception {
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
        assertTrue(accountService.createAccount(inforAccount.getAccount(),inforAccount.getCustomer()));
        assertEquals(accountService.getAccountByUserName(inforAccount.getUserName()).getUserName(),inforAccount.getUserName());
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