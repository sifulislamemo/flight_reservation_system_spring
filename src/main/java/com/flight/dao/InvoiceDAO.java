package com.flight.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.flight.model.BookingInformation;
import com.flight.model.Flight;

@Repository(value = "invoiceDAO")
@Transactional
public class InvoiceDAO {
	@Autowired
    private EntityManager entityManager;
    
    private Session getSession() {
        return entityManager.unwrap(Session.class);
    }
    
    public List<BookingInformation> getByEmail(String temail) {
        String hqlQuery = "from bookingInformation where temail = :temail";
        Query query = getSession().createQuery(hqlQuery);
        query.setParameter("temail", temail);
        
      System.out.println("search" +temail);
        List<BookingInformation> bookingList = query.list();
        getSession().flush();
      
        return bookingList;
        }
}
