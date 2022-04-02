package com.flight.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
import com.flight.service.InvoiceService;

@RestController
@RequestMapping(value = "/home")
public class BookingInformationController {
	@Autowired
	InvoiceService invoiceService;
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
    public ModelAndView save(HttpServletRequest r, @ModelAttribute BookingInformation bookingInformation){
		
		BookingInformation b = bookingInformationService.save(bookingInformation, r);
		
//		System.out.println(bookingInformation.getAdult());
		Map<String, Object> book = new HashMap<String, Object>();
        List<BookingInformation> bList = invoiceService.getByEmail(b.getTemail());

        book.put("bList", bList);
		return new ModelAndView("/booking/congratsBooking", "book", book);
    }
	

	
//	@RequestMapping(value = "/booking/information/", method = RequestMethod.GET) 
//	  public ModelAndView view(){ 
//		  List<Flight> flight = flightService.getAll();
//	return new ModelAndView("/booking/information", "flight", flight); 
//	}
}
