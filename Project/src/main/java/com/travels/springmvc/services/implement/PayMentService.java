package com.travels.springmvc.services.implement;

import com.mservice.allinone.models.CaptureMoMoResponse;
import com.mservice.allinone.processor.allinone.CaptureMoMo;
import com.mservice.shared.sharedmodels.Environment;
import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.pojo.PayMent;
import com.travels.springmvc.pojo.Tour;
import com.travels.springmvc.services.IBookingService;
import com.travels.springmvc.services.IPayMentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;

@Service
@Transactional
public class PayMentService extends GenericsService<PayMent,String> implements IPayMentService {
    @Autowired
    Environment environment;

    @Autowired
    IBookingService bookingService;

    public String getUrlPayMent(String bookingId, HttpServletRequest request) throws Exception {
        Booking booking = bookingService.getElementById(bookingId);
        if(booking == null) throw new Exception("Không có hóa đơn này");
        String requestId = request.getSession().getId();
        String orderId =  String.valueOf(System.currentTimeMillis()) ;
        String amount = booking.getTotalMoney().toString();

        Tour tour = booking.getTour();
        String orderInfo = "Tour " + tour.getTourName() +"\n Mã tour: " + tour.getTourId();
        String returnURL = "localhost:8080/Project_war_exploded/pay/momo/result";
        String notifyURL = "localhost:8080/Project_war_exploded/pay/momo/result";
        String extraData = booking.getBookingId();
        String bankCode = "SML";
        CaptureMoMoResponse captureMoMoResponse;
        try {
            captureMoMoResponse = CaptureMoMo.process(environment, orderId, requestId, amount, orderInfo, returnURL, notifyURL, extraData);
            assert captureMoMoResponse != null;
            return captureMoMoResponse.getPayUrl();
        } catch (Exception exception) {
            System.err.println("====== payment service ====");
            exception.printStackTrace();
            throw new Exception("Cổng thanh toán không hoạt động");
        }
    }
}
