package com.flight.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

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
	    	
		 List<Flight> flight = getSession().createCriteria(Flight.class).list();
		 return flight; 
		  }
	    public Flight getFlightById(int pid) {
	        String sql = "from flight where id = '" + pid + "'";
	        List<Flight> flightList = getSession().createQuery(sql).list();
	        
	        return flightList.get(0);

	    }
	   
}
