package com.travels.springmvc.controller.Admin;

import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.services.IAccountService;
import com.travels.springmvc.services.ICustomerService;
import com.travels.springmvc.services.implement.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.UUID;

@Controller
public class CustomerController {
    @Autowired
    private ICustomerService customerService;
    @Autowired
    private IAccountService accountService;

    @RequestMapping("/CustomerTable")
    public String table(Model model){
        this.customerService.getAll().forEach(System.out::println);
        List<Customer> cus = this.customerService.getAll();
        model.addAttribute("customers",cus );
        model.addAttribute("Customer", new Customer());
        return "Table";
    }
//    public String deleteCustomer(Model m, @PathVariable("customerId") int customerId){
//        Customer customer = customerService.getElementById("customerId");
//        if(customer != null) {
//            boolean cus = customerService.remove(customer);
//        }
//
//    }

    @PostMapping("/them")
    public String addCustomer(@ModelAttribute("Customer") @Valid Customer cus,
                              BindingResult result, ModelMap model){
        cus.setCustomerId(UUID.randomUUID().toString());
        cus.setAccount(accountService.getElementById("quynh2"));
        System.out.println(cus.getFirstName());
        this.customerService.add(cus);
        return "redirect:/CustomerTable";
    }

//    @PostMapping("/update")
//    public String updateCustomer(@ModelAttribute("Customer") @Valid Customer cus,
//                              BindingResult result, ModelMap model){
//
//    }

    @DeleteMapping ("/customers/{customerId}")
    @ResponseStatus(HttpStatus.OK)
    public void deleteCustomer(@PathVariable(name = "customerId") String customerId) {
        this.customerService.remove(customerService.getElementById(customerId));
    }
    @PostMapping("/customers/update/{customerId}")
    public void updateCustomer(@PathVariable(name = "customerId") String customerId){
        System.out.println(customerId);

        this.customerService.saveOrUpdate(customerService.getElementById(customerId));
    }
}
