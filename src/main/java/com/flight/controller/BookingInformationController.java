package com.flight.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.flight.model.BookingInformation;
import com.flight.model.Flight;
import com.flight.service.BookingInformationService;
import com.flight.service.FlightService;

@RestController
@RequestMapping(value = "/home")
public class BookingInformationController {
	@Autowired
	FlightService flightService;
	@Autowired
	BookingInformationService bookingInformationService;
	
	
	@RequestMapping(value = "/booking/information/{id}", method = RequestMethod.GET)
    public ModelAndView edit(@PathVariable String id){
        int pid = Integer.valueOf(id);
        Flight flight = flightService.getFlightById(pid);

        return new ModelAndView("booking/information", "flight", flight);
    }
	
	@RequestMapping(value = "/book/invoice", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute BookingInformation bookingInformation){
    	
		BookingInformation b = bookingInformationService.save(bookingInformation);
//		System.out.println(bookingInformation.getAdult());
		return new ModelAndView("/booking/searchInvoice");
    }
	
	
	
//	@RequestMapping(value = "/booking/information/", method = RequestMethod.GET) 
//	  public ModelAndView view(){ 
//		  List<Flight> flight = flightService.getAll();
//	return new ModelAndView("/booking/information", "flight", flight); 
//	}
}
