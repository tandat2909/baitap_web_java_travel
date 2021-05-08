package com.travels.config;

import com.travels.springmvc.respository.Enum.ERole;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@EnableWebSecurity
@EnableTransactionManagement
@ComponentScan(basePackages = {"com.travels.springmvc"})
public class SpringSecurityConfig extends WebSecurityConfigurerAdapter {
    @Autowired
    private UserDetailsService userDetailsService;
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
    @Override
    protected void configure(AuthenticationManagerBuilder auth)throws Exception {

        auth.userDetailsService(userDetailsService)
                .passwordEncoder(passwordEncoder());
    }

    protected void configure(HttpSecurity http)
            throws Exception {


        http.formLogin().loginPage("/login")
                .usernameParameter("username")
                .passwordParameter("password");
        http.formLogin().defaultSuccessUrl("/").failureUrl("/login?error");

        http.logout().logoutSuccessUrl("/login");
        http.exceptionHandling().accessDeniedPage("/login?accessDenied");

        http.authorizeRequests().antMatchers("/").permitAll()
                .antMatchers("/**/pay")
                .access("hasAnyRole('"+ERole.ROLE_CUSTOMER.name()+"', '"+ERole.ROLE_ADMIN.name()+"')")
                .antMatchers("/**/admin/**/")
                .access("hasRole('"+ERole.ROLE_ADMIN.name()+"')")
                .antMatchers("/**/booking/**/").access("hasAnyRole('"+ERole.ROLE_CUSTOMER.name()+"', '"+ERole.ROLE_ADMIN.name()+"')")
                //.antMatchers("/**/booking/**/")
                //.access("hasAnyRole('"+ERole.ROLE_CUSTOMER.name()+"', '"+ERole.ROLE_ADMIN.name()+"')")

        ;

        http.csrf().disable();
    }
}