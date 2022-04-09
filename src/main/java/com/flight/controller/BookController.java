package com.flight.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.flight.model.Airport;
import com.flight.model.BookingInformation;
import com.flight.service.BookService;
import com.flight.service.BookingInformationService;

@RestController
@RequestMapping(value = "/admin/book")
public class BookController {
	@Autowired
	BookService bookService;
	@Autowired
	BookingInformationService bookingInformationService;
	@RequestMapping(value = "/request", method = RequestMethod.GET)
	public ModelAndView bookRequest() {
		  List<BookingInformation> bookRequest = bookService.getByPending(null);

		return new ModelAndView("admin/book/request", "bookRequest", bookRequest);
}
	
	@RequestMapping(value = "/approved/{id}", method = RequestMethod.GET)
	public ModelAndView update(HttpServletRequest request, @PathVariable("id") int id) {
		//System.out.println(id +"....................");
		BookingInformation bookingInformation = bookService.getById(id);
//		System.out.println(applyjob.getId());
		
		BookingInformation p = bookService.approvedStatus(bookingInformation);
		return new ModelAndView("admin/book/request");
//		List<ApplyJob> applyJob = applyJobService.findByApproved(null);
//		return new ModelAndView("clients/applications/approvedApplications", "applyJob", applyJob);

	}
	
	@RequestMapping(value = "/confirm", method = RequestMethod.GET)
	public ModelAndView bookConfirm() {
		  List<BookingInformation> bookConfirm = bookService.getByApprove(null);

		return new ModelAndView("admin/book/confirm", "bookConfirm", bookConfirm);
}
}
