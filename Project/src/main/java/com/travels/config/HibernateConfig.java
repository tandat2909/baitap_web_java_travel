package com.travels.config;


import org.hibernate.cfg.AvailableSettings;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;

import javax.sql.DataSource;
import java.util.Properties;

@Configuration
@PropertySource("Classpath:database.properties")
public class HibernateConfig {
    @Autowired
    private Environment env;

    @Bean
    public LocalSessionFactoryBean getSessionFactory() {
        LocalSessionFactoryBean factory = new LocalSessionFactoryBean();
        factory.setPackagesToScan(new String[]{"com.travels.springmvc.pojo"});
        factory.setDataSource(dataSource());
        factory.setHibernateProperties(properties());
        return factory;
    }

    private Properties properties() {
        Properties properties = new Properties();
        properties.put(AvailableSettings.DIALECT, env.getProperty("hibernate.DIALECT"));
        properties.put(AvailableSettings.SHOW_SQL, env.getProperty("hibernate.SHOW_SQL"));

        return properties;
    }

    @Bean
    public DataSource dataSource() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName(env.getProperty("hibernate.DRIVER"));
        dataSource.setUrl(env.getProperty("hibernate.URL"));
        dataSource.setUsername(env.getProperty("hibernate.USER"));
        dataSource.setPassword(env.getProperty("hibernate.PASS"));
        return dataSource;
    }

    @Bean
    public HibernateTransactionManager hibernateTransactionManager() {
        HibernateTransactionManager transactionManager = new HibernateTransactionManager();
        transactionManager.setSessionFactory(getSessionFactory().getObject());
        return transactionManager;
    }
}
