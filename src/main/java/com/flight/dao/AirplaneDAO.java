package com.flight.dao;

import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.flight.model.Airplane;


@Repository(value = "airplaneDAO")
@Transactional
public class AirplaneDAO {
	 @Autowired
	    private EntityManager entityManager;
	    
	    private Session getSession() {
	        return entityManager.unwrap(Session.class);
	    }
	    public Airplane save(Airplane airplane){
	    	getSession().save(airplane);
	    	getSession().flush();
	        return airplane;
	    }
}
