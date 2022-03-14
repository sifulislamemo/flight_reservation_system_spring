package com.flight.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class LoginController {
	@RequestMapping(value = "/login")
public ModelAndView login() {
	return new ModelAndView("login/login");
}
	@RequestMapping(value = "/signUp")
public ModelAndView signUp() {
	return new ModelAndView("login/signUp");
}
}
