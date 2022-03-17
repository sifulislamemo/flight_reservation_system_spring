package com.flight.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;



@RestController
@RequestMapping(value = "/admin")
public class AirportController {
	@RequestMapping(value = "/airport_add")
	public ModelAndView airportAdd() {
		return new ModelAndView("admin/airport/airport_add");
	}
	
	
}
