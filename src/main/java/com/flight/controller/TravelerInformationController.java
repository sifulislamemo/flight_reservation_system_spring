package com.flight.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class TravelerInformationController {
	@RequestMapping(value = "/traveler_information")
public ModelAndView travelerInformation() {
	return new ModelAndView("traveler_information/traveler_information");
}
}
