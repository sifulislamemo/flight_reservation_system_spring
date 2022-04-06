package com.flight.dao;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.flight.model.Flight;
import com.flight.model.Seat;

@Repository(value = "seatDAO")
@Transactional
public class SeatDAO {
	 @Autowired
	    private EntityManager entityManager;
	    
	    private Session getSession() {
	        return entityManager.unwrap(Session.class);
	    }
	    public Seat save(Seat seat){
	    	getSession().save(seat);
	    	getSession().flush();
	        return seat;
	    }

}
