package com.flight.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.flight.dao.FlightDAO;
import com.flight.model.Flight;

@Service(value = "flightService")
public class FlightService {
	@Autowired
	FlightDAO flightDAO;
//	public Flight save(HttpServletRequest request){
//	       
//        String airline = request.getParameter("airline");
//        Flight flight = new Flight();
//        flight.setAirline(airline);
//        flight.setDeparture_airport(request.getParameter("departure_airport"));
//        flight.setArrival_airport(request.getParameter("arrival_airport"));
//        flight.setDeparting_date(Date.);
//        flight.setCapacity(Integer.valueOf(request.getParameter("capacity")));
//        return airplaneDAO.save(airplane);
//    }
	
	public Flight save(Flight f){
        return flightDAO.save(f);
    }
	public List<Flight> getAll() 
	  { 
		  return flightDAO.getAll(); 
	  }
	public Flight getFlightById(int pid) {
        return flightDAO.getFlightById(pid);
    }
}
