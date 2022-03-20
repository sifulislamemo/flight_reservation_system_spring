package com.flight.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.flight.model.Airplane;
import com.flight.model.Airport;
import com.flight.model.Flight;
import com.flight.model.Traveller;
import com.flight.service.AirportService;
import com.flight.service.FlightService;
import com.flight.service.TravellerService;

@RestController
@RequestMapping(value = "/admin/flight")
public class FlightController {
	@Autowired
	FlightService flightService;
	@Autowired
	AirportService airportService;
	
	@RequestMapping(value = "/add")
public ModelAndView flightAdd() {
	return new ModelAndView("admin/flight/add");
}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute Flight flight){
    	
		Flight p = flightService.save(flight);
		return new ModelAndView("admin/flight/add");
    }
	@RequestMapping(value = "/view", method = RequestMethod.GET) 
	  public ModelAndView view(){ 
		  List<Flight> flight = flightService.getAll();
	return new ModelAndView("admin/flight/view", "flight", flight); 
	}
	
	 @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	    public ModelAndView edit(@PathVariable String id){
	        int pid = Integer.valueOf(id);
	        Flight flight = flightService.getFlightById(pid);

	        return new ModelAndView("admin/flight/update", "flight", flight);
	    }
	 
	 @RequestMapping(value = "/add", method = RequestMethod.GET) 
	  public ModelAndView airportView(){ 
		  List<Airport> airport = airportService.getAll();
	return new ModelAndView("admin/flight/add", "airport", airport); 
	}
	 
	 
	 
}
