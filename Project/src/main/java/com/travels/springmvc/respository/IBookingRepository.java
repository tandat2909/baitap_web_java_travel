package com.travels.springmvc.respository;

import com.travels.springmvc.modelView.BookingView;
import com.travels.springmvc.pojo.Booking;
import org.apache.commons.lang.NullArgumentException;

import java.util.List;

public interface IBookingRepository extends IGenericsRepository<Booking,String> {
    Booking save(BookingView bookingView) throws Exception;

    @Override
    void remove(Booking obj) throws Exception;

    void remove(String bookingId) throws Exception;

    List<Booking> thongketheonam(int nam) throws Exception;
    List<Booking> thongketheothang(int nam, int month) throws Exception;



}
