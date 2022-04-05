package com.flight.service;

import java.util.List;

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
        b.setAirpalne(flight.getAirline());
        b.setDeparture_airport(flight.getDeparture_airport());
        b.setArrival_airport(flight.getArrival_airport());
        b.setDeparting_date(flight.getDeparting_date());
        b.setDeparting_time(flight.getDeparting_time());
        b.setArrival_date(flight.getArrival_date());
        b.setArrival_time(flight.getArrival_time());
        b.setFlight_charge(flight.getFlight_charge());
		return bookingInformationDAO.save(b);
    }
	
	public List<BookingInformation> getAll() 
	  { 
		  return bookingInformationDAO.getAll(); 
	  }
	
	public List<BookingInformation> getBySeat() {
        return bookingInformationDAO.getBySeat();
   }

//	public BookingInformation getFlightBySeat(String parameter) {
//		// TODO Auto-generated method stub
//		return bookingInformationDAO.getFlightBySeat(parameter);
//	}
	
}
