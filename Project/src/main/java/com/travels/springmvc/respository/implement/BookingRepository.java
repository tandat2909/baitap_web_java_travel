package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.respository.IBookingRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class BookingRepository extends GenericsRepository<Booking,String> implements IBookingRepository {
}
