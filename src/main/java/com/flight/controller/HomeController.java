package com.flight.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.flight.model.Airport;
import com.flight.service.AirportService;

@RestController
public class HomeController {
	@Autowired
	AirportService airportService;
	
//	@RequestMapping(value = "/", method = RequestMethod.GET) 
//	public ModelAndView home() {
//		return new ModelAndView("home/home");
//	}
	
	@RequestMapping(value = "/", method = RequestMethod.GET) 
	  public ModelAndView airportView(){ 
		  List<Airport> airport = airportService.getAll();
	return new ModelAndView("home/home", "airport", airport); 
	}
	
	
}
