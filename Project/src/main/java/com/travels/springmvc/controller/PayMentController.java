package com.travels.springmvc.controller;

import com.mservice.allinone.models.CaptureMoMoResponse;
import com.mservice.allinone.processor.allinone.CaptureMoMo;
import com.mservice.shared.sharedmodels.Environment;
import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.respository.Enum.EMessages;
import com.travels.springmvc.services.IBookingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@Controller
@RequestMapping("/pay")
public class PayMentController {
    @Autowired
    Environment environment;
    @Autowired
    IBookingService bookingService;

    @RequestMapping("/momo")
    public String paymomo(Model model, @RequestParam("bookingId") String bookingId, HttpServletRequest request , HttpServletResponse response) {
        try {
            Booking booking = bookingService.getElementById(bookingId);
            if(booking == null) throw new Exception("Không có hóa đơn này");
            String requestId = request.getSession().getId();
            String orderId =  String.valueOf(System.currentTimeMillis()) ;
            String amount = booking.getTotalMoney().toString();
            String orderInfo = "Thanh toán Tour du lịch";
            String returnURL = "http://localhost:8080/Project_war_exploded/pay/momo/result";
            String notifyURL = "http://localhost:8080/Project_war_exploded/pay/momo/result";
            String extraData = booking.getBookingId();
            String bankCode = "SML";
            CaptureMoMoResponse captureMoMoResponse;
            try {
                captureMoMoResponse = CaptureMoMo.process(environment, orderId, requestId, amount, orderInfo, returnURL, notifyURL, extraData);
                model.addAttribute("urlpayment",captureMoMoResponse.getPayUrl());
                response.sendRedirect(captureMoMoResponse.getPayUrl());
                //return "template_payment";
            } catch (Exception exception) {
                exception.printStackTrace();
                throw new Exception("Cổng thanh toán không hoạt động");
            }

        }catch (Exception exception){
            exception.printStackTrace();
            model.addAttribute("messege",new String[]{EMessages.error.name(),exception.getMessage()});
        }
        return "template_payment";
    }

    @RequestMapping("/momo/result")
    public String checkPayMent(@RequestParam("accessKey") String accessKey,
                               @RequestParam("partnerCode") String partnerCode,
                               @RequestParam("requestId") String requestId,
                               @RequestParam("orderId") String orderId,
                               @RequestParam("transId") String transId,
                               @RequestParam("localMessage") String localMessage,
                               @RequestParam(value = "errorCode",required = false) String errorCode,
                               @RequestParam("extraData") String extraData
                               ){

        System.err.println("=====Thông tin thanh toán trả về==");
        System.err.println(accessKey);
        System.err.println(partnerCode);
        System.err.println(requestId);
        System.err.println(orderId);
        System.err.println(transId);
        System.err.println(localMessage);
        System.err.println(errorCode);
        System.err.println(extraData);



        return "redirect:/pay/momo";
    }
}

//
// http://localhost:8080/Project_war_exploded/?
// partnerCode=MOMOS3KE20210512
// &accessKey=5ppm9lyWaIOQURz9
// &requestId=1620766600709
// &amount=3003
// &orderId=1620766600709
// &orderInfo=Pay%20With%20MoMo
// &orderType=momo_wallet
// &transId=181608521563
// &message=Order%20was%20canceled%20by%20user
// &localMessage=%C4%90%C6%A1n%20h%C3%A0ng%20%C4%91%C3%A3%20b%E1%BB%8B%20hu%E1%BB%B7%20b%E1%BB%8F
// &responseTime=2021-05-12%2004:06:42
// &errorCode=49
// &payType=web
// &extraData=
// &signature=16cd6deb39ef495d454bcaec406ad87d81f33b17f7157bebbd266741231ec682

//respont
//?partnerCode=MOMOS3KE20210512
//        &accessKey=5ppm9lyWaIOQURz9
//        &requestId=1620765701465
//        &amount=3003
//        &orderId=1620765701465
//        &orderInfo=Pay%20With%20MoMo
//        &orderType=momo_wallet
//        &transId=2513472257
//        &message=Success
//        &localMessage=Thành%20công
//        &responseTime=2021-05-12%2003:42:02&errorCode=0
//        &payType=qr&extraData=
//        &signature=94845b545530f0d1f2eddc5e0215d121156a2d1a48c00f248b9bbf9efae5bb6c