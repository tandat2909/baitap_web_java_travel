package com.travels.springmvc.respository;

import com.travels.springmvc.modelView.BookingView;
import com.travels.springmvc.pojo.Booking;
import org.apache.commons.lang.NullArgumentException;

public interface IBookingRepository extends IGenericsRepository<Booking,String> {
    Booking save(BookingView bookingView) throws Exception;

    @Override
    void remove(Booking obj) throws Exception;

    void remove(String bookingId) throws Exception;

    void comfirmBooking(String bookingId) throws Exception;
    long thongketheonam(int nam,int month) throws Exception;

}
