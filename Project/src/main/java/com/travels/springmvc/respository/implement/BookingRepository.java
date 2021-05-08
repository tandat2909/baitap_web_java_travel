package com.travels.springmvc.respository.implement;

import com.travels.springmvc.modelView.BookingView;
import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.pojo.Pricedetails;
import com.travels.springmvc.pojo.Tour;
import com.travels.springmvc.respository.Enum.EAges;
import com.travels.springmvc.respository.IBookingRepository;
import com.travels.springmvc.respository.ITourPriceRepository;
import com.travels.springmvc.respository.ITourRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@Transactional
@Repository
public class BookingRepository extends GenericsRepository<Booking,String> implements IBookingRepository {
    @Autowired
    ITourRepository tourRepository;
    @Autowired
    ITourPriceRepository tourPriceRepository;
    @Override
    public void save(BookingView bookingView) {

        Booking booking = bookingView.getBooking();
        booking.setBookingId(UUID.randomUUID().toString());
        booking.setBookingDate(new Date());
        booking.setStatus(false);
        booking.setTickets(bookingView.getTickets());
        List<Pricedetails> pricedetails = new ArrayList<>();
        Tour tour = tourRepository.getElementById(booking.getTourId());
        for (EAges eAges: EAges.values()){
            Pricedetails nl = new Pricedetails();
            nl.setQuantity((int) bookingView.getTickets().stream().filter(ticket -> ticket.getAgesId().equals(EAges.getId(eAges))).count());
            nl.setAgeId(EAges.getId(eAges));
            nl.setPrice(tourPriceRepository.getPriceByAgeTourId(EAges.getId(eAges),bookingView.getTourId()));
            nl.setBookingId(booking.getBookingId());
            pricedetails.add(nl);
        }
        booking.setTickets(bookingView.getTickets());
        booking.setPricedetails(pricedetails);
        save(booking);
    }
}
