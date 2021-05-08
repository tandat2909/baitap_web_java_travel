package com.travels.springmvc.modelView;

import java.util.Date;

public class Utils {
    public static Date getDateRequest(String date){
        return new Date(java.sql.Date.valueOf(date).getTime());
    }
}
