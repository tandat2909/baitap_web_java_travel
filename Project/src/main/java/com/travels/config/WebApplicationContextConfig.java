package com.travels.config;


import org.springframework.context.MessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;
import org.springframework.web.servlet.config.annotation.DefaultServletHandlerConfigurer;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;



@Configuration
@EnableWebMvc
@EnableTransactionManagement
@ComponentScan(basePackages = {"com.travels.springmvc"})
public class WebApplicationContextConfig implements WebMvcConfigurer {
    @Override
    public void configureDefaultServletHandling(
            DefaultServletHandlerConfigurer configurer) {
        configurer.enable();
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        /*registry.addResourceHandler("/css/**")
                .addResourceLocations("/resources/css/");
        registry.addResourceHandler("/img/**")
                .addResourceLocations("/resources/images/");
        registry.addResourceHandler("/js/**")
                .addResourceLocations("/resources/js/");*/
        //login
        registry.addResourceHandler("/login/**")
                .addResourceLocations("/resources/admin/");

        //Trang chu
//        registry.addResourceHandler("/TrangChu/css/**")
//                .addResourceLocations("/resources/TrangChu/css/");
//        registry.addResourceHandler("/TrangChu/img/**")
//                .addResourceLocations("/resources/TrangChu/images/");
//        registry.addResourceHandler("/TrangChu/fonts/**")
//                .addResourceLocations("/resources/TrangChu/fonts/");

        registry.addResourceHandler("/TrangChu/**").addResourceLocations("/resources/TrangChu/");
        registry.addResourceHandler("/pages/**").addResourceLocations("/WEB-INF/pages/");
        //admin
        registry.addResourceHandler("/admin/**").addResourceLocations("/resources/admin/");

//        registry.addResourceHandler("/admin/css/**")
//                .addResourceLocations("/resources/admin/css/");
//        registry.addResourceHandler("/admin/fonts/**")
//                .addResourceLocations("/resources/admin/fonts/");
//        registry.addResourceHandler("/admin/images/**")
//                .addResourceLocations("/resources/admin/images/");
//        registry.addResourceHandler("/admin/js/**")
//                .addResourceLocations("/resources/admin/js/");

    }



    //Chỉ định đọc các tập tin properties
    @Bean
    public MessageSource messageSource() {
        ResourceBundleMessageSource resource = new ResourceBundleMessageSource();
        resource.setBasename("messages");

        return resource;
    }
    @Bean(name = "validator")
    public LocalValidatorFactoryBean getvalidator() {
        LocalValidatorFactoryBean bean
                = new LocalValidatorFactoryBean();
        bean.setValidationMessageSource(messageSource());
        return bean;
    }




}
