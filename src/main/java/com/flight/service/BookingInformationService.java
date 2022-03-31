package com.flight.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flight.dao.BookingInformationDAO;
import com.flight.dao.FlightDAO;
import com.flight.model.BookingInformation;
import com.flight.model.Flight;

@Service(value = "bookingInformationService")
public class BookingInformationService {
	@Autowired
	FlightDAO flightDAO;
	@Autowired
	BookingInformationDAO bookingInformationDAO;
	
	@Autowired
	FlightService flightService;
	
	public Flight getFlightById(int pid) {
        return flightDAO.getFlightById(pid);
    }
	
	public BookingInformation save(BookingInformation b, HttpServletRequest request){
		Flight flight = flightService.getFlightById(Integer.valueOf(request.getParameter("flight_id")));
        b.setFlight_code(flight.getFlight_code());
		return bookingInformationDAO.save(b);
    }
	
}
