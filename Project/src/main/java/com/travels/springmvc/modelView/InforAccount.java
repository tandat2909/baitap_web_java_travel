package com.travels.springmvc.modelView;

import com.travels.springmvc.pojo.Account;
import com.travels.springmvc.pojo.Customer;
import com.travels.springmvc.pojo.Employees;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.io.Serializable;
import java.sql.Date;

public class InforAccount implements Serializable{

   // @Pattern(regexp = "[a-zA-Z0-9]{5,}" , message = "{account.username.error}")
    String userName;

   // @Pattern(regexp = "^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@$!%*?&])[A-Za-z\\d@$!%*?&]{8,}$", message = "{account.password.error}")
    String password;
    String confirmPassword;

    String lastName;
    String firstName;
    //@NotNull
    String birthDay;

    String CCID;
   // @Pattern(regexp = "(84|0[3|5|7|8|9])+([0-9]{8})\\b", message = "{customer.phoneNumber.error}")
    String phoneNumber;
    //@Pattern(regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,}$",message = "{account.email.error}")
    String email;
    private String gender;

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(String birthDay) {
        this.birthDay = birthDay;
    }

    public String getCCID() {
        return CCID;
    }

    public void setCCID(String CCID) {
        this.CCID = CCID;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public boolean isPassConfirm(){
        return password.equals(confirmPassword);
    }
    public java.util.Date getBirthDaySql(){
        return new java.util.Date(Date.valueOf(this.birthDay).getTime());
    }

    public Account getAccount(){
        Account ac = new Account();
        ac.setPw(password);
        ac.setUserName(userName);
        ac.setConfirmPw(confirmPassword);
        return ac;
    }
    public Customer getCustomer(){
        Customer cus = new Customer();
        cus.setLastName(lastName);
        cus.setFirstName(firstName);
        cus.setEmail(email);
        cus.setBirthDay(getBirthDaySql());
        cus.setPhoneNumber(phoneNumber);
        cus.setCcid(CCID);
        cus.setGender(gender);
        return cus;
    }
    public Employees getEmployee(){
        Employees emp = new Employees();
        emp.setLastName(lastName);
        emp.setFirstName(firstName);
        emp.setEmail(email);
        emp.setBirthDay(getBirthDaySql());
        emp.setPhoneNumber(phoneNumber);
        emp.setCcid(CCID);
        emp.setGender(gender);
        return emp;
    }

    @Override
    public String toString() {
        return "InforAccount{" +
                "userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", confirmPassword='" + confirmPassword + '\'' +
                ", lastName='" + lastName + '\'' +
                ", firstName='" + firstName + '\'' +
                ", birthDay='" + birthDay + '\'' +
                ", CCID='" + CCID + '\'' +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", email='" + email + '\'' +
                '}';
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
}
