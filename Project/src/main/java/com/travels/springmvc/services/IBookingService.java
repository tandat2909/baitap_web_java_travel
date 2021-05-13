package com.travels.springmvc.services;

import com.travels.springmvc.modelView.BookingView;
import com.travels.springmvc.pojo.Booking;

public interface IBookingService extends IGenericsService<Booking,String> {
    Booking add(BookingView bookingView,String username) throws Exception;
    void remove(String bookingId) throws Exception;
    void comfirmBooking(String bookingId,String userName) throws Exception;
    void comfirmBooking(Booking booking,String userName) throws Exception;
    boolean isComfirmBookking(String bookingId);

}
