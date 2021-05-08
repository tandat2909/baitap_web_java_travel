package com.travels.springmvc.services;

import com.travels.springmvc.modelView.BookingView;
import com.travels.springmvc.pojo.Booking;

public interface IBookingService extends IGenericsService<Booking,String> {
    void add(BookingView bookingView,String username) throws Exception;

}
