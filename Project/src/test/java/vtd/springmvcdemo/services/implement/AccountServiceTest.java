package vtd.springmvcdemo.services.implement;

import com.travels.springmvc.pojo.Account;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AccountServiceTest{

    @Test
    void getAllTest(){
        List<Account> accountList = null;
        Assertions.assertTrue(accountList.size() > 0 );

    }

}
