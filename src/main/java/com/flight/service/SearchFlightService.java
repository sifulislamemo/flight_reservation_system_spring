package com.flight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flight.dao.AirplaneDAO;
import com.flight.dao.FlightDAO;
import com.flight.dao.SearchFlightDAO;
import com.flight.model.Flight;

@Service(value = "searchFlightService")
public class SearchFlightService {
	@Autowired
	SearchFlightDAO searchFlightDAO;
//	@Autowired
//	FlightDAO flightDAO;
	
	 public List<Flight> getByDeparture(String departure_airport) {
         return searchFlightDAO.getByDeparture(departure_airport);
    }
	 
//	 public Flight getFlightById(int pid) {
//	        return flightDAO.getFlightById(pid);
//	    }
}
