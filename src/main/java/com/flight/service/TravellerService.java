package com.flight.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flight.dao.TravellerDAO;
import com.flight.model.Traveller;

@Service(value = "travellerService")
public class TravellerService {
	@Autowired
	TravellerDAO travellerDAO;
	public Traveller save(Traveller t){
        return travellerDAO.save(t);
    }
	
	public List<Traveller> getAll() {
        return travellerDAO.getAll();
    }
	
	public Traveller getTravellerById(int pid) {
        return travellerDAO.getTravellerById(pid);
    }
	
	 public Traveller update(HttpServletRequest request) {
	        String first_name = request.getParameter("first_name");
	        Traveller t = new Traveller();
	        t.setId(Integer.valueOf(request.getParameter("id")));
	        t.setFirst_name(first_name);
	        t.setLast_name(request.getParameter("last_name"));
	        t.setNID(request.getParameter("NID"));
	        t.setPassport_id(request.getParameter("passport_id"));
	        t.setGender(request.getParameter("gender"));
	        t.setContact(request.getParameter("contact"));
	        t.setEmail(request.getParameter("email"));

	        return travellerDAO.update(t);
	    }
	 
	 public Traveller delete(int pid) {
		 Traveller t = travellerDAO.getTravellerById(pid);
	        return travellerDAO.delete(t);
	    }
}
