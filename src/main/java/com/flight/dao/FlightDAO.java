package com.flight.dao;

import java.util.List;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.flight.model.Airplane;
import com.flight.model.Flight;

@Repository(value = "flightDAO")
@Transactional
public class FlightDAO {
	 @Autowired
	    private EntityManager entityManager;
	    
	    private Session getSession() {
	        return entityManager.unwrap(Session.class);
	    }
	    
	    public Flight save(Flight flight){
	    	getSession().save(flight);
	    	getSession().flush();
	        return flight;
	    }
	    public List<Flight> getAll(){ 
	    	String sql = "from flight"; 
		 List<Flight> flight = getSession().createQuery(sql).list(); 
		 return flight; 
		  }
}
