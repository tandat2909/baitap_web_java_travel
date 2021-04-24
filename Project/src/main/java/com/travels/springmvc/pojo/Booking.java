package com.travels.springmvc.pojo;

import com.travels.springmvc.Annotation.GeneratedValueUUID;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.Collection;
import java.util.Objects;

@Entity
@Table(name = "booking")
public class Booking implements Serializable {

    @Id
    @GeneratedValueUUID
    @Column(name = "bookingID", nullable = false, length = 100)
    private String bookingId;
    private Date bookingDate;
    private Integer totalMoney;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "customerID", nullable = false)
    private Customer customer;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "employeesID" ,nullable = false)
    private Employees employee;

    @OneToOne(mappedBy = "booking" ,cascade = CascadeType.ALL,
            fetch = FetchType.LAZY, optional = false)
    private Bookingdetails bookingdetail;

    @OneToMany(mappedBy = "booking")
    private Collection<Pricedetails> pricedetails;

    @OneToMany(mappedBy = "booking")
    private Collection<Ticket> tickets;



    public String getBookingId() {
        return bookingId;
    }

    public void setBookingId(String bookingId) {
        this.bookingId = bookingId;
    }



    @Basic
    @Column(name = "BookingDate", nullable = false)
    public Date getBookingDate() {
        return bookingDate;
    }

    public void setBookingDate(Date bookingDate) {
        this.bookingDate = bookingDate;
    }

    @Basic
    @Column(name = "totalMoney", nullable = true, precision = 0)
    public Integer getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(Integer totalMoney) {
        this.totalMoney = totalMoney;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Booking booking = (Booking) o;
        return Objects.equals(bookingId, booking.bookingId)  && Objects.equals(bookingDate, booking.bookingDate) && Objects.equals(totalMoney, booking.totalMoney);
    }

    @Override
    public int hashCode() {
        return Objects.hash(bookingId, bookingDate, totalMoney);
    }


    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public Employees getEmployee() {
        return employee;
    }

    public void setEmployee(Employees employee) {
        this.employee = employee;
    }

    public Bookingdetails getBookingdetail() {
        return bookingdetail;
    }

    public void setBookingdetail(Bookingdetails bookingdetail) {
        this.bookingdetail = bookingdetail;
    }

    public Collection<Pricedetails> getPricedetails() {
        return pricedetails;
    }

    public void setPricedetails(Collection<Pricedetails> pricedetails) {
        this.pricedetails = pricedetails;
    }

    public Collection<Ticket> getTickets() {
        return tickets;
    }

    public void setTickets(Collection<Ticket> tickets) {
        this.tickets = tickets;
    }
}
