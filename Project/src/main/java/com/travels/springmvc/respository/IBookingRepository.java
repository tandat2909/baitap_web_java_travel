package com.travels.springmvc.respository;

import com.travels.springmvc.modelView.BookingView;
import com.travels.springmvc.pojo.Booking;

public interface IBookingRepository extends IGenericsRepository<Booking,String> {
    void save(BookingView bookingView);
}
