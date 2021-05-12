package com.travels.springmvc.services;

import com.travels.springmvc.pojo.PayMent;

import javax.servlet.http.HttpServletRequest;

public interface IPayMentService extends IGenericsService<PayMent,String> {

    String getUrlPayMent(String bookingId, HttpServletRequest request) throws Exception;
}
