package com.travels.springmvc.controller;

import com.mservice.allinone.models.CaptureMoMoResponse;
import com.mservice.allinone.models.PayGateResponse;
import com.mservice.allinone.processor.allinone.CaptureMoMo;
import com.mservice.allinone.processor.allinone.PaymentResult;
import com.mservice.shared.sharedmodels.Environment;
import com.travels.springmvc.pojo.Booking;
import com.travels.springmvc.pojo.PayMent;
import com.travels.springmvc.pojo.Tour;
import com.travels.springmvc.respository.Enum.EMessages;
import com.travels.springmvc.respository.Enum.EStatusPay;
import com.travels.springmvc.services.IBookingService;
import com.travels.springmvc.services.IPayMentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.math.BigDecimal;
import java.util.Date;


@Controller
@RequestMapping("/pay")
public class PayMentController {
    @Autowired
    Environment environment;
    @Autowired
    IBookingService bookingService;
    @Autowired
    IPayMentService payMentService;

    @RequestMapping("/momo")
    public String paymomo(Model model, @RequestParam("bookingId") String bookingId, HttpServletRequest request, HttpServletResponse response) {
        try {
            String urlpay = payMentService.getUrlPayMent(bookingId, request);
            response.sendRedirect(urlpay);
        } catch (Exception exception) {
            System.err.println("==============paymomo");
            exception.printStackTrace();
            model.addAttribute("messege", new String[]{EMessages.error.name(), exception.getMessage()});
        }
        return "template_payment";
    }

    @RequestMapping("/momo/check")
    public String checkPayMent(@RequestParam("accessKey") String accessKey,
                               @RequestParam("partnerCode") String partnerCode,
                               @RequestParam("requestId") String requestId,
                               @RequestParam("orderId") String orderId,
                               @RequestParam("transId") String transId,
                               @RequestParam("localMessage") String localMessage,
                               @RequestParam(value = "errorCode", required = false) String errorCode,
                               @RequestParam("extraData") String extraData,
                               @RequestParam("amount") String amount,

    HttpServletRequest request ) throws Exception {

        System.err.println("=====Thông tin thanh toán trả về==");
        System.err.println(accessKey);
        System.err.println(partnerCode);
        System.err.println(requestId);
        System.err.println(orderId);
        System.err.println(transId);
        System.err.println(localMessage);
        System.err.println(errorCode);
        System.err.println(extraData);
        System.err.println("==== responese");
        PayGateResponse payGateResponse = PaymentResult.process(environment,new PayGateResponse());
        System.err.println(payGateResponse.getTransId());

        if(accessKey.equals(environment.getPartnerInfo().getAccessKey()))
            if(partnerCode.equals(environment.getPartnerInfo().getPartnerCode()))
                if(requestId.equals(request.getSession().getId()))
                    if(errorCode.equals("0"))
                    {
                        PayMent payMent = new PayMent();
                        payMent.setOrderId(orderId);
                        payMent.setPayId(orderId);
                        payMent.setAmountPay(new BigDecimal(amount));
                        payMent.setDatePay(new Date());
                        payMent.setTransId(transId);
                        payMent.setBookingId(extraData);
                        payMentService.add(payMent);
                        Booking booking = bookingService.getElementById(extraData);
                        booking.setStatusPay(EStatusPay.success.name());
                        bookingService.update(booking);

                    }
        return "redirect:/";
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

}