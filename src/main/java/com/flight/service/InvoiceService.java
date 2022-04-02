package com.flight.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flight.dao.InvoiceDAO;
import com.flight.model.BookingInformation;
import com.flight.model.Flight;

@Service(value = "invoiceService")
public class InvoiceService {
	@Autowired
	InvoiceDAO invoiceDAO;
	
	public List<BookingInformation> getByEmail(String temail) {
        return invoiceDAO.getByEmail(temail);
   }
}
