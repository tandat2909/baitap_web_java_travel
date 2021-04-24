package com.travels.springmvc.modelView;

import com.travels.springmvc.pojo.Customer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BookingView {
    String data;

    public Map<String, List<Customer>> booking(){
        Map<String,List<Customer>>listMap = new HashMap<>();
        return listMap;
    }
}
