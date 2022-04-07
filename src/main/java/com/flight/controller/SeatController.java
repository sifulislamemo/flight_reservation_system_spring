package com.flight.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.flight.model.Flight;
import com.flight.model.Seat;
import com.flight.service.FlightService;
import com.flight.service.SeatService;

@RestController
@RequestMapping(value = "/admin/seat")
public class SeatController {
	@Autowired
	SeatService seatService;
	@Autowired
	FlightService flightService;
	@RequestMapping(value = "/add")
public ModelAndView signUp() {
	return new ModelAndView("admin/seat_booking/add");
}
	@RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save( @ModelAttribute Seat seat){
		
//		Flight f = seatService.getFlightByName(seat.getFlight_name());
		Seat s = seatService.save(seat);
		
		return new ModelAndView("admin/seat_booking/add");
    }
	
	/*  Flight Drop-down */
	 @RequestMapping(value = "/add", method = RequestMethod.GET) 
	  public ModelAndView flightView(){ 
		  List<Flight> flight = flightService.getAll();
//		  for (int i = 0; i < flight.size(); i++) {
//			System.out.println(flight);
//		}
	return new ModelAndView("admin/seat_booking/add", "flight", flight); 
	}
	
}
