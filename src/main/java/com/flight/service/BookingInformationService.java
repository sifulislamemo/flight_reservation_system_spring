package com.flight.service;

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
	
	public Flight getFlightById(int pid) {
        return flightDAO.getFlightById(pid);
    }
	
	public BookingInformation save(BookingInformation b){
        return bookingInformationDAO.save(b);
    }
	
}
