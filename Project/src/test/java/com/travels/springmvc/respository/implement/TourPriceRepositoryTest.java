package com.travels.springmvc.respository.implement;

import com.travels.springmvc.respository.ITourPriceRepository;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.math.BigDecimal;

import static org.junit.jupiter.api.Assertions.*;

@SpringBootTest
class TourPriceRepositoryTest {
    @Autowired
    ITourPriceRepository tourPriceRepository;

    @BeforeEach
    void setUp() {
    }

    @AfterEach
    void tearDown() {
    }

    @Test
    void getPriceByAgeTourId() {
        /**
         * 31c75b0d-ec1c-4c39-9caf-5f2e90e7f492,8946c154-f504-4c38-924a-44b6e1298148,123123123
         * bdee5279-4601-484c-8fce-e8f5781deda3,8946c154-f504-4c38-924a-44b6e1298148,12123123
         * c71fb358-c195-4bc4-9e45-004fd8a5ffd2,8946c154-f504-4c38-924a-44b6e1298148,123123
         * f53d20c2-7f20-4fad-bab6-76847d102ef9,8946c154-f504-4c38-924a-44b6e1298148,123
         * */
        assertEquals(new BigDecimal(123123),tourPriceRepository.getPriceByAgeTourId("f53d20c2-7f20-4fad-bab6-76847d102ef9","95e43aea-559f-4e26-8970-9524228c2f9c"));
    }
}