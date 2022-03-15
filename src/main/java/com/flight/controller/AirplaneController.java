package com.flight.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "/airplane")
public class AirplaneController {
	@RequestMapping(value = "/airplane_add")
public ModelAndView airplaneAdd() {
	return new ModelAndView("admin/airplane/airplane_add");
}
}
