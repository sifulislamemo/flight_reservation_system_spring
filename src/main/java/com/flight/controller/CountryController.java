package com.flight.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.flight.model.Airplane;

@RestController
@RequestMapping(value = "/admin/country")
public class CountryController {
	@RequestMapping(value = "/add")
public ModelAndView add() {
	return new ModelAndView("admin/country/add");
}
//	@RequestMapping(value = "/save", method = RequestMethod.POST)
//    public ModelAndView save(HttpServletRequest request){
//        Airplane p = airplaneService.save(request);
//        return new ModelAndView("admin/airplane/add");
//    }
	
}
