package com.flight.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.flight.model.Traveller;
import com.flight.service.TravellerService;

@RestController
@RequestMapping(value = "/admin/traveller")
public class TravellerController {
	@Autowired
	TravellerService travellerService;
	@RequestMapping(value = "/add")
public ModelAndView travellerAdd() {
	return new ModelAndView("admin/traveller/add");
}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(@ModelAttribute Traveller traveller){
    	
		Traveller p = travellerService.save(traveller);
		return new ModelAndView("admin/traveller/add");
    }
	@RequestMapping(value = "/view", method = RequestMethod.GET)
    public ModelAndView view(){
        List<Traveller> traveller = travellerService.getAll();
        return new ModelAndView("admin/traveller/view", "traveller", traveller);
    }
	
	 @RequestMapping(value = "/update/{id}", method = RequestMethod.GET)
	    public ModelAndView edit(@PathVariable String id){
	        int pid = Integer.valueOf(id);
	        Traveller t = travellerService.getTravellerById(pid);
	        return new ModelAndView("admin/traveller/update", "t", t);
	    }
	 @RequestMapping(value = "/update", method = RequestMethod.POST)
	    public ModelAndView update(HttpServletRequest request){
		 Traveller t = travellerService.update(request);
	        return new ModelAndView("admin/traveller/update");
	    }
	 
	 @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	    public ModelAndView delete(@PathVariable String id){
	        int pid = Integer.valueOf(id);
	        Traveller t = travellerService.delete(pid);
	        List<Traveller> traveller = travellerService.getAll();
	        return new ModelAndView("admin/traveller/view", "traveller", traveller);
	    }
	
}
