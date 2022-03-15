package com.flight.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "/airplane")
public class AirportController {
	@RequestMapping(value = "/airport_add")
	public ModelAndView airportAdd() {
		return new ModelAndView("admin/airport/airport_add");
	}
}
