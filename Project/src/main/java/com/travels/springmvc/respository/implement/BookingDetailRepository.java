package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Bookingdetails;
import com.travels.springmvc.respository.IBookingDetailRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Repository
public class BookingDetailRepository extends GenericsRepository<Bookingdetails,String> implements IBookingDetailRepository {
}
