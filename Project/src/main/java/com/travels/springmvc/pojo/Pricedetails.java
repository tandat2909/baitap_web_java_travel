package com.travels.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Objects;

@Entity
@Table(name = "pricedetails")
public class Pricedetails implements Serializable {
    @Id
    @Column(name = "priceDetailsID", nullable = false, length = 100)
    private String priceDetailsId;

    @Column(name = "ageID")
    private String ageId;

    private int quantity;
    private BigDecimal price;

    @Column(name = "bookingID")
    private String bookingId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "bookingID",insertable = false,updatable = false)
    private Booking booking;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ageID", insertable = false,updatable = false)
    private Ages ages;

    public String getPriceDetailsId() {
        return priceDetailsId;
    }

    public void setPriceDetailsId(String priceDetailsId) {
        this.priceDetailsId = priceDetailsId;
    }

    public String getAgeId() {
        return ageId;
    }

    public void setAgeId(String ageId) {
        this.ageId = ageId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public String getBookingId() {
        return bookingId;
    }

    public void setBookingId(String bookingId) {
        this.bookingId = bookingId;
    }

    public Booking getBooking() {
        return booking;
    }

    public void setBooking(Booking booking) {
        this.booking = booking;
    }

    public Ages getAges() {
        return ages;
    }

    public void setAges(Ages ages) {
        this.ages = ages;
    }

    @Override
    public String toString() {
        return "Pricedetails{" +
                "priceDetailsId='" + priceDetailsId + '\'' +
                ", ageId='" + ageId + '\'' +
                ", quantity=" + quantity +
                ", price=" + price +
                ", bookingId='" + bookingId + '\'' +
                '}';
    }
}
