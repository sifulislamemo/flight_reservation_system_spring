package com.flight.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "/admin")
public class CountryController {
	@RequestMapping(value = "/country_add")
public ModelAndView countryAdd() {
	return new ModelAndView("admin/country/country_add");
}
}
