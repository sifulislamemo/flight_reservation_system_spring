package com.flight.dao;



import javax.persistence.EntityManager;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.flight.model.Country;

@Repository(value = "countryDAO")
@Transactional
public class CountryDAO {
@Autowired
private EntityManager entityManager;
private Session getSession() {
	return entityManager.unwrap(Session.class);
}
public Country save(Country country) {
	getSession().save(country);
	getSession().flush();
	return country;	
}
}
