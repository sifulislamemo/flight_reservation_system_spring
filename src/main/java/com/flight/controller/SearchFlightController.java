package com.flight.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
@RestController
public class SearchFlightController {
	@RequestMapping(value = "/available_flight")
public ModelAndView signUp() {
	return new ModelAndView("searchFlight/searchFlight");
}
}
