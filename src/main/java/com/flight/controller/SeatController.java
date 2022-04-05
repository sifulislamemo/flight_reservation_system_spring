package com.flight.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
@RequestMapping(value = "/admin/seat")
public class SeatController {
	@RequestMapping(value = "/add")
public ModelAndView signUp() {
	return new ModelAndView("admin/seat_booking/add");
}
}
