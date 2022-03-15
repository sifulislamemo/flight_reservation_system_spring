package com.flight.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "/airplane")
public class TravellerController {
	@RequestMapping(value = "/traveller_add")
public ModelAndView travellerAdd() {
	return new ModelAndView("admin/traveller/traveller_add");
}
}
