package com.travels.config;

import com.travels.springmvc.modelView.InforAccount;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.ModelAttribute;

@Configuration
public class InitializerClass {
    @Bean
    @ModelAttribute("InforAccount")
    public InforAccount inforAccount(){
        return new InforAccount();
    }
}
