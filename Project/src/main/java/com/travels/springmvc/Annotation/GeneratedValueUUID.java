package com.travels.springmvc.Annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;


/*
* chú thích nó là field được generated value type uuid
* */
@Target({ElementType.FIELD})
@Retention(RetentionPolicy.RUNTIME)
public @interface GeneratedValueUUID  {
    /*
    * True: cho phép set dữ liệu vô field được gắn Annotation này
    * False: không cho phép set dữ liệu vô field được gắn Annotation này
    * */
    boolean status() default true;
}
