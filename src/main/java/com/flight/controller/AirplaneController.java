package com.flight.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.flight.model.Airplane;
import com.flight.service.AirplaneService;





@RestController
@RequestMapping(value = "/admin")
public class AirplaneController {
	@Autowired
    AirplaneService airplaneService;
	@RequestMapping(value = "/airplane_add", method = RequestMethod.GET)
	public ModelAndView airplaneAdd() {
		return new ModelAndView("admin/airplane/airplane_add");
}
//	@RequestMapping(value = "/airplane_update", method = RequestMethod.GET)
//	public ModelAndView airplaneUpdate() {
//		return new ModelAndView("admin/airplane/airplane_update");
//}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView save(HttpServletRequest request){
        Airplane p = airplaneService.save(request);
        return new ModelAndView("admin/airplane/airplane_add");
    }
	
	  @RequestMapping(value = "/airplane_view", method = RequestMethod.GET) 
	  public ModelAndView view(){ 
		  List<Airplane> airplanes = airplaneService.getAll();
	return new ModelAndView("admin/airplane/airplane_view", "airplanes", airplanes); 
	}
	  
	  @RequestMapping(value = "/airplane_update/{id}", method = RequestMethod.GET)
	    public ModelAndView edit(@PathVariable String id){
	        int pid = Integer.valueOf(id);
	        Airplane airplanes = airplaneService.getAirplaneById(pid);
	        System.out.println(airplanes.getAirplane_name());
	        return new ModelAndView("admin/airplane/airplane_update", "airplanes", airplanes);
	    }
	  
	  @RequestMapping(value = "/update", method = RequestMethod.POST)
	    public ModelAndView update(HttpServletRequest request){
		  Airplane p = airplaneService.update(request);
	        return new ModelAndView("product/show");
	    }
	
	
	
}
