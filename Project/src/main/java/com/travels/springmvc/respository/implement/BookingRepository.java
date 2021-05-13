package com.travels.springmvc.respository.implement;

import com.travels.springmvc.modelView.BookingView;
import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.pojo.Pricedetails;
import com.travels.springmvc.pojo.Ticket;
import com.travels.springmvc.pojo.Tour;
import com.travels.springmvc.respository.*;
import com.travels.springmvc.respository.Enum.EAges;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.math.BigDecimal;
import java.util.*;

@Transactional
@Repository
public class BookingRepository extends GenericsRepository<Booking, String> implements IBookingRepository {
    @Autowired
    ITourRepository tourRepository;
    @Autowired
    ITourPriceRepository tourPriceRepository;

    @Autowired
    IPriceDetailRepository priceDetailRepository;

    @Autowired
    ITicketRepository ticketRepository;

    @Autowired
    ICustomerRepository customerRepository;

    @Override

    public Booking save(BookingView bookingView) throws Exception {

        try {
            /**
             * 1. Lưu thông tin booking
             * 2. Lưu ticket
             * 3. Lưu pricedetails
             *
             */
            System.err.println("=================Bookingrepository=====");

            Booking booking = bookingView.getBooking();
            if (booking == null) throw new Exception("Vé đặt Tour Trống");

            Tour tour = null;
            try {
                tour = tourRepository.getElementById(booking.getTourId());
            } catch (Exception e) {
                throw new Exception("Mã Tour không hợp lệ");
            }


            if (tour.getMaxseats() == 0) throw new Exception("Tour đã hết chỗ bạn không thể đặt Tour này");
            if (tour.getMaxseats() - booking.getAmountGuests() < 0)
                throw new Exception("Số lượng khách hàng không hợp lệ");

            boolean error = false;
            booking.setBookingId(UUID.randomUUID().toString());
            booking.setBookingDate(new Date());
            booking.setStatus(false);
            //booking.setTickets(bookingView.getTickets());
            List<Pricedetails> pricedetails = new ArrayList<>();


//            System.err.println("tourid: " + booking.getTourId() + " - ageid: " + EAges.getId(EAges.NGUOILON));
//            System.err.println("price" + tourPriceRepository.getPriceByAgeTourId(EAges.getId(EAges.NGUOILON), booking.getTourId()));

            for (EAges eAges : EAges.values()) {
                long quantity = bookingView.getTickets().stream().filter(ticket -> ticket.getAgesId().equals(EAges.getId(eAges))).count();
                if (quantity > 0) {
                    Pricedetails nl = new Pricedetails();
                    nl.setPriceDetailsId(UUID.randomUUID().toString());
                    nl.setAgeId(EAges.getId(eAges));
                    nl.setQuantity((int) quantity);
                    nl.setPrice(tourPriceRepository.getPriceByAgeTourId(EAges.getId(eAges), booking.getTourId()));
                    nl.setBookingId(booking.getBookingId());
                    booking.setTotalMoney(booking.getTotalMoney().add(nl.getPrice().multiply(BigDecimal.valueOf(quantity))));
                    pricedetails.add(nl);
                }
            }
//            System.err.println(booking);
//            System.err.println(booking.getCustomer().getCustomerId());
            save(booking);
//            System.err.println("=======for ticket booking repository");
            try {

                for (Ticket t : bookingView.getTickets()) {
                    try {
//                    System.err.println("time current: "+ t.getCustomer().getBirthDay().getTime()  );
//                    System.err.println("time now: "+ new Date().getTime()  );
                        int ageCurrent = new Date().getYear() - t.getCustomer().getBirthDay().getYear();
                        int[] ageValidDate = EAges.getAgeVaildById(t.getAgesId());
//                    System.err.println("ageCurrent: "+ageCurrent+" ageValidDate: " + Arrays.toString(ageValidDate));
                        assert ageValidDate != null;
                        if (ageCurrent >= ageValidDate[0] && ageCurrent <= ageValidDate[1]) {
//                        System.err.println(t);
//                        System.err.println(t.getCustomer());
                            currentSession().save(t.getCustomer());
                            t.setBooking(booking);
                            currentSession().save(t);
                        } else {

                            throw new Exception("Tuổi khách hàng " + (t.getCustomer().getFirstName() != null ? t.getCustomer().getFirstName() : "") + " " + t.getCustomer().getLastName() + " không đúng quy định");
                        }
                    } catch (Exception exception) {
                        System.err.println("===== lỗi lưu customer ====");
                        exception.printStackTrace();
                        remove(booking);
                        error = true;
                        throw new Exception("Thông tin danh sách khách hàng không hợp lệ\n " + exception.getMessage());
                    }
                }


            }catch (Exception exception){
                throw exception;
            }

            priceDetailRepository.saveAll(pricedetails);
            //cập nhật lại số lượng
            tour.setMaxseats(tour.getMaxseats() - booking.getAmountGuests());
            currentSession().update(tour);
            return getElementById(booking.getBookingId());


        } catch (Exception exception) {
            System.err.println("===== lỗi tạo booking ====");
            exception.printStackTrace();
            throw new Exception(exception.getMessage());
        }
    }

    @Override
    public void remove(String bookingId) throws Exception {
        if (bookingId != null && !bookingId.isBlank()) {
            remove(getElementById(bookingId));

        }
    }

    @Override
    public void comfirmBooking(String bookingId) throws Exception {
        try {
            if (bookingId != null & !bookingId.isBlank()) {
                Booking booking = getElementById(bookingId);
                if (booking == null) throw new Exception("");
                booking.setStatus(true);
                update(booking);
            }
        } catch (Exception e) {
            throw new Exception("Booking không hợp lệ");
        }

    }

    @Override
    public void remove(Booking booking) throws Exception {
        if (booking != null && !booking.isStatus()) {
            super.remove(booking);
            return;
        }
        throw new Exception("Bạn không thể xóa tour đã xác nhận của nhân viên");
    }


    public List<Booking> thongketheonam(int nam) throws Exception {
        return super.Thongke((builder, query, root, args) -> {
            Predicate year = builder.equal(builder.function("year", Integer.class, root.get("bookingDate").as(Date.class)), nam);
            query.where(year);
            return query;
        }, nam);
    }
    public List<Booking> thongketheothang(int nam, int month) throws Exception {
        return super.Thongke((builder, query, root, args) -> {
            Predicate year = builder.equal(builder.function("year", Integer.class, root.get("bookingDate").as(Date.class)), nam);
            Predicate months = builder.equal(builder.function("month", Integer.class, root.get("bookingDate")), month);
            //Predicate prices = builder.equal(builder.function("prices", BigDecimal.class, root.get("totalMoney")),month);
            query.where(builder.and(year, months));
            return query;
        });
    }

}
