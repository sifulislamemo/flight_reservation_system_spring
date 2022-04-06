package com.flight.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.flight.dao.SeatDAO;
import com.flight.model.Seat;
@Service(value = "seatService")
public class SeatService {
	@Autowired
	SeatDAO seatDAO;
	public Seat save(Seat s){
        return seatDAO.save(s);
    }
}
