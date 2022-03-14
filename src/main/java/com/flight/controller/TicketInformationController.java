package com.flight.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class TicketInformationController {
	@RequestMapping(value = "/ticket_information")
public ModelAndView signUp() {
	return new ModelAndView("ticket_information/ticket_information");
}
}
