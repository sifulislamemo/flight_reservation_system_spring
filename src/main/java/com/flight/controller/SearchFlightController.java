package com.flight.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.flight.model.Flight;
import com.flight.service.FlightService;

@RestController
public class SearchFlightController {
	
	@Autowired
	FlightService flightService;
//	
//	@RequestMapping(value = "/available_flight")
//	 public ModelAndView signUp() {
//	 	return new ModelAndView("searchFlight/searchFlight");
//	 }
//	
	@RequestMapping(value = "/available_flight", method = RequestMethod.GET)
    public ModelAndView serachFlight(HttpServletRequest request) {
        Map<String, Object> flight = new HashMap<String, Object>();
        List<Flight> fList = flightService.getAll();
        for (int i = 0; i < fList.size(); i++) {
			System.out.println(fList.get(i).getDeparture_airport());
		}
        flight.put("fList", fList);
        return new ModelAndView("searchFlight/searchFlight", "flight", flight);
    }
}
