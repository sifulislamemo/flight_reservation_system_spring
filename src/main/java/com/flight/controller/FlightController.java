package com.flight.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "/admin")
public class FlightController {
	@RequestMapping(value = "/flight_add")
public ModelAndView flightAdd() {
	return new ModelAndView("admin/flight/flight_add");
}
}
