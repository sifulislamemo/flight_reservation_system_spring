package com.flight.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class AdminController {
	@RequestMapping(value = "/admin")
public ModelAndView admin() {
	return new ModelAndView("admin/admin");
}
}
