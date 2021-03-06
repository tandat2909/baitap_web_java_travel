package com.travels.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Date;
import java.util.Collection;
import java.util.Objects;

@Entity
@Table(name = "employees")
public class Employees implements Serializable {
    @Id
    @Column(name = "employeeID", nullable = false, length = 100)
    private String employeeId;
    private String firstName;
    private String lastName;
    private String email;
    private String ccid;
    private Date birthDay;
    private String phoneNumber;
    private String address;

    @OneToMany(mappedBy = "employee")
    private Collection<Booking> bookings;

    @ManyToOne
    @JoinColumn(name = "accountID", referencedColumnName = "accountID", nullable = false,unique = true)
    private Account account;



    public String getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId;
    }

    @Basic
    @Column(name = "firstName", nullable = false, length = 50)
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Basic
    @Column(name = "lastName", nullable = true, length = 50)
    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    @Basic
    @Column(name = "email", nullable = true, length = 100)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "CCID", nullable = true, length = 50)
    public String getCcid() {
        return ccid;
    }

    public void setCcid(String ccid) {
        this.ccid = ccid;
    }

    @Basic
    @Column(name = "birthDay", nullable = false)
    public Date getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(Date birthDay) {
        this.birthDay = birthDay;
    }

    @Basic
    @Column(name = "phoneNumber", nullable = true, length = 50)
    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    @Basic
    @Column(name = "address", nullable = true, length = 200)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Employees employees = (Employees) o;
        return Objects.equals(employeeId, employees.employeeId) && Objects.equals(firstName, employees.firstName) && Objects.equals(lastName, employees.lastName) && Objects.equals(email, employees.email) && Objects.equals(ccid, employees.ccid) && Objects.equals(birthDay, employees.birthDay) && Objects.equals(phoneNumber, employees.phoneNumber) && Objects.equals(address, employees.address) ;
    }

    @Override
    public int hashCode() {
        return Objects.hash(employeeId, firstName, lastName, email, ccid, birthDay, phoneNumber, address);
    }


    public Collection<Booking> getBookings() {
        return bookings;
    }

    public void setBookings(Collection<Booking> bookings) {
        this.bookings = bookings;
    }


    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    @Override
    public String toString() {
        return "Employees{" +
                "employeeId='" + employeeId + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", ccid='" + ccid + '\'' +
                ", birthDay=" + birthDay +
                ", phoneNumber='" + phoneNumber + '\'' +
                ", address='" + address + '\'' +
                ", bookings=" + bookings.size() +
                ", accountId=" + account.getAccountId() +
                '}';
    }
}
