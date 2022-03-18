package com.flight.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flight.dao.CountryDAO;

import com.flight.model.Country;

@Service(value = "countryService")
public class CountryService {
@Autowired 
CountryDAO countryDAO;

public Country save(HttpServletRequest request) {
	String city_name = request.getParameter("city_name");
	Country country = new Country();
	country.setCity_name(city_name);
	country.setLatitude("latitude");
	country.setLongitude("longitude");
	country.setCountry("country");
	country.setCity_code("city_code");
	return countryDAO.save(country);
}

public List<Country> getAll() 
{ 
	  return countryDAO.getAll(); 
}

public Country getCountryById(int pid) {
    return countryDAO.getCountryById(pid);
}

public Country update(HttpServletRequest request) {
	String city_name = request.getParameter("city_name");
	Country country = new Country();
	country.setCity_name(city_name);
	country.setLatitude("latitude");
	country.setLongitude("longitude");
	country.setCountry("country");
	country.setCity_code("city_code");
	return countryDAO.update(country);
}
public Country delete(int pid) {
	Country country = countryDAO.getCountryById(pid);
    return countryDAO.delete(country);
}
}
