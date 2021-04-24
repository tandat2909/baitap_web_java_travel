package com.travels.springmvc.pojo;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "ticket")
public class Ticket implements Serializable {
    @Id
    @Column(name = "ticketID", nullable = false, length = 100)
    private String ticketId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "bookingID", nullable = false)
    private Booking booking;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "customerID", nullable = false)
    private Customer customer;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ageID", nullable = false)
    private Ages ages;



    public String getTicketId() {
        return ticketId;
    }

    public void setTicketId(String ticketId) {
        this.ticketId = ticketId;
    }



    public Booking getBooking() {
        return booking;
    }

    public void setBooking(Booking booking) {
        this.booking = booking;
    }


    public Customer getCustomerByCustomerId() {
        return customer;
    }

    public void setCustomerByCustomerId(Customer customerByCustomerId) {
        this.customer = customerByCustomerId;
    }


    public Ages getAges() {
        return ages;
    }

    public void setAges(Ages ages) {
        this.ages = ages;
    }
}
