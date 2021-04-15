package com.travels.springmvc.pojo;

import com.travels.springmvc.Annotation.GeneratedValueUUID;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import java.io.Serializable;
import java.sql.Date;
import java.util.Collection;
import java.util.Objects;

@Entity
@Table(name = "customer")
public class Customer implements Serializable {
    @Id
    @GeneratedValueUUID
    @Column(name = "customerID", nullable = false, length = 100)
    private String customerId;
    @NotNull
    private String firstName;
    @NotNull
    private String lastName;
    @NotNull
    @Pattern(regexp = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,}$",message = "{account.email.error}")
    private String email;
    @NotNull
    private Date birthDay;
    private String ccid;
    @NotNull
    @Pattern(regexp = "(84|0[3|5|7|8|9])+([0-9]{8})\\b", message = "customer.phone.error")
    private String phoneNumber;

    @OneToMany(mappedBy = "customer")
    private Collection<Booking> bookings;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "accountID", referencedColumnName = "accountID", nullable = false,unique = true)
    private Account account;

    @OneToMany(mappedBy = "customer")
    private Collection<Ticket> tickets;



    public String getCustomerId() {
        return customerId;
    }

    public void setCustomerId(String customerId) {
        this.customerId = customerId;
    }

    @Basic
    @Column(name = "firstName", nullable = true, length = 50)
    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    @Basic
    @Column(name = "lastName", nullable = false, length = 50)
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
    @Column(name = "birthDay", nullable = false)
    public Date getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(Date birthDay) {
        this.birthDay = birthDay;
    }

    @Basic
    @Column(name = "CCID", nullable = false)
    public String getCcid() {
        return ccid;
    }

    public void setCcid(String ccid) {
        this.ccid = ccid;
    }

    @Basic
    @Column(name = "phoneNumber", nullable = true, length = 40)
    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Customer customer = (Customer) o;
        return ccid == customer.ccid && Objects.equals(customerId, customer.customerId) && Objects.equals(firstName, customer.firstName) && Objects.equals(lastName, customer.lastName) && Objects.equals(email, customer.email) && Objects.equals(birthDay, customer.birthDay) && Objects.equals(phoneNumber, customer.phoneNumber) ;
    }

    @Override
    public int hashCode() {
        return Objects.hash(customerId, firstName, lastName, email, birthDay, ccid, phoneNumber);
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


    public Collection<Ticket> getTickets() {
        return tickets;
    }

    public void setTickets(Collection<Ticket> tickets) {
        this.tickets = tickets;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "customerId='" + customerId + '\'' +
                ", firstName='" + firstName + '\'' +
                ", lastName='" + lastName + '\'' +
                ", email='" + email + '\'' +
                ", birthDay=" + birthDay +
                ", ccid=" + ccid +
                ", phoneNumber='" + phoneNumber + '\'' +
                '}';
    }
}
