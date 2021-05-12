package com.travels.springmvc.pojo;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

@Entity
@Table(name = "pay")
public class PayMent {
    @Id
    @Column(name = "payId")
    private String payId;
    @Column(name = "transId")
    /**
     * Mã Giao dịch
     */
    private String transId;
    @Column(name = "orderId")
    private String orderId;
    @Column(name = "datePay")
    private Date datePay;
    @Column(name = "amountPay")
    private BigDecimal amountPay;

    @Column(name = "bookingId")
    private String bookingId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "bookingId",insertable = false,updatable = false)
    private Booking booking;

    public Booking getBooking() {
        return booking;
    }

    public void setBooking(Booking booking) {
        this.booking = booking;
    }

    public String getPayId() {
        return payId;
    }

    public void setPayId(String payId) {
        this.payId = payId;
    }

    public String getTransId() {
        return transId;
    }

    public void setTransId(String transId) {
        this.transId = transId;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public Date getDatePay() {
        return datePay;
    }

    public void setDatePay(Date datePay) {
        this.datePay = datePay;
    }

    public BigDecimal getAmountPay() {
        return amountPay;
    }

    public void setAmountPay(BigDecimal amountPay) {
        this.amountPay = amountPay;
    }

    public String getBookingId() {
        return bookingId;
    }

    public void setBookingId(String bookingId) {
        this.bookingId = bookingId;
    }
}
