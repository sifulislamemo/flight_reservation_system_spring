package com.flight.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flight.dao.FlightDAO;
import com.flight.dao.SeatDAO;
import com.flight.model.BookingInformation;
import com.flight.model.Flight;
import com.flight.model.Seat;
@Service(value = "seatService")
public class SeatService {
	@Autowired
	SeatDAO seatDAO;
	@Autowired
	FlightService flightService;
	@Autowired
	FlightDAO flightDAO;
	public Seat save(Seat s){
		
        return seatDAO.save(s);
    }
	public Seat save(Seat s, HttpServletRequest request){
		Flight flight = flightService.getFlightById(Integer.valueOf(request.getParameter("flight_id")));
        s.setFlight_code(flight.getFlight_code());
        s.setAirpalne(flight.getAirline());
        s.setDeparture_airport(flight.getDeparture_airport());
        s.setArrival_airport(flight.getArrival_airport());
        s.setDeparting_date(flight.getDeparting_date());
        s.setDeparting_time(flight.getDeparting_time());
        s.setArrival_date(flight.getArrival_date());
        s.setArrival_time(flight.getArrival_time());
        s.setAirpalne(flight.getAirpalne());
		return seatDAO.save(s);
    }
	
	public Flight getFlightByName(String fname) {
        return seatDAO.getFlightByName(fname);
    }
	
	
}
