package com.travels.springmvc.pojo;

import com.travels.springmvc.Annotation.GeneratedValueUUID;
import com.travels.springmvc.respository.Enum.ERole;

import javax.enterprise.inject.Default;
import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;
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
    @Column(name = "BookingDate")
    private Date bookingDate;
    private BigDecimal totalMoney;
    @Column(name = "amoutGuests")
    private Integer amountGuests;

    @Column(name = "typePay")
    private String typePay;

    /**
     * trạng thái thanh toán của booking
     * default: pending
     */
    @Column(name = "statusPay")
    private String statusPay;

    @Column(name = "note")
    private String note;

    /**
     * Trạng thái xác nhận của nhân viên
     */
    @Column(name = "status")
    private boolean status;

    @Column(name = "tourID")
    private String tourId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "tourID",insertable = false,updatable = false)
    private Tour tour;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "customerID")
    private Account customer;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "employeesID",insertable = false,updatable = false )
    private Account employee;


    @OneToMany(mappedBy = "booking",cascade = CascadeType.ALL)
    private Collection<Pricedetails> pricedetails;

    @OneToMany(mappedBy = "booking",cascade = CascadeType.ALL)
    private Collection<Ticket> tickets;

//    @OneToOne(fetch = FetchType.LAZY)
//
//    private PayMent payMent;

//    public PayMent getPayMent() {
//        return payMent;
//    }
//
//    public void setPayMent(PayMent payMent) {
//        this.payMent = payMent;
//    }


    public String getBookingId() {
        return bookingId;
    }

    public void setBookingId(String bookingId) {
        this.bookingId = bookingId;
    }

    public String getStatusPay() {
        return statusPay;
    }

    public void setStatusPay(String statusPay) {
        this.statusPay = statusPay;
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
    public BigDecimal getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(BigDecimal totalMoney) {
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


    public Account getCustomer() {
        return customer;
    }

    /**
     *
     * @param customer type Account
     * lưu id tài khoản của người dùng
     * cho phép Employee, Admin, Customer có thể đăng ký tour
     */
    public void setCustomer(Account customer) {
        this.customer = customer;
    }

    public Account getEmployee() {
        return employee;
    }

    /**
     *
     * @param employee type Account
     *  Chỉ cho phép Employees, Admin xác nhận tour
     */
    public void setEmployee(Account employee)  {
        this.employee = employee;

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

    public Integer getAmountGuests() {
        return amountGuests;
    }

    public void setAmountGuests(Integer amountGuests) {
        this.amountGuests = amountGuests;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getTourId() {
        return tourId;
    }

    public void setTourId(String tourId) {
        this.tourId = tourId;
    }

    public Tour getTour() {
        return tour;
    }

    public void setTour(Tour tour) {
        this.tour = tour;
    }

    public String getTypePay() {
        return typePay;
    }

    public void setTypePay(String typePay) {
        this.typePay = typePay;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "Booking{" +
                "bookingId='" + bookingId + '\'' +
                ", bookingDate=" + bookingDate +
                ", totalMoney=" + totalMoney +
                ", amountGuests=" + amountGuests +
                ", typePay='" + typePay + '\'' +
                ", note='" + note + '\'' +
                ", status=" + status +
                ", tourId='" + tourId + '\'' +
                '}';
    }
}
