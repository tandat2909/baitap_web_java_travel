package com.travels.springmvc.respository.implement;

import com.travels.springmvc.pojo.Pricedetails;
import com.travels.springmvc.pojo.Tourprices;
import com.travels.springmvc.respository.ITourPriceRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.math.BigDecimal;

@Transactional
@Repository
public class TourPriceRepository extends GenericsRepository<Tourprices,String> implements ITourPriceRepository {

    @Override
    public BigDecimal getPriceByAgeTourId(String ageId, String tourId) {
//        System.err.println("=========");
//        System.err.println("touridsss: "+tourId);
        try {
            return (BigDecimal) currentSession().createSQLQuery("Select price From Tourprices where ageId = :aid and tourId = :tid")
                    .setParameter("aid", ageId)
                    .setParameter("tid", tourId)
                    .getResultList().get(0);
        }catch (Exception exception){
            System.err.println("===========Lỗi getPriceByAgeTourId()");
            exception.printStackTrace();
            return new BigDecimal(0);
        }
    }

    @Override
    public Tourprices getTourPriceByAgeTourId(String ageId, String tourId) {
        try {
            return (Tourprices) currentSession().createQuery("From Tourprices where ageId = :aid and tourId = :tid")
                    .setParameter("aid", ageId)
                    .setParameter("tid", tourId)
                    .getResultList().get(0);
        }catch (Exception exception){
            System.err.println("===========Lỗi getPriceByAgeTourId()");
            exception.printStackTrace();
            return null;
        }
    }
}
