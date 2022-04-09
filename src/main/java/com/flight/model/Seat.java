package com.flight.model;

import java.sql.Date;
import java.sql.Time;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "seat")
@Table(name = "seat")
public class Seat {
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
    private String flight_name;
	private String seat_no;
	private int seat_code;
	private String seat_class;
	private Double seat_charge;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFlight_name() {
		return flight_name;
	}
	public void setFlight_name(String flight_name) {
		this.flight_name = flight_name;
	}
	public String getSeat_no() {
		return seat_no;
	}
	public void setSeat_no(String seat_no) {
		this.seat_no = seat_no;
	}
	public int getSeat_code() {
		return seat_code;
	}
	public void setSeat_code(int seat_code) {
		this.seat_code = seat_code;
	}
	public String getSeat_class() {
		return seat_class;
	}
	public void setSeat_class(String seat_class) {
		this.seat_class = seat_class;
	}
	public Double getSeat_charge() {
		return seat_charge;
	}
	public void setSeat_charge(Double seat_charge) {
		this.seat_charge = seat_charge;
	}
	

    
	
}