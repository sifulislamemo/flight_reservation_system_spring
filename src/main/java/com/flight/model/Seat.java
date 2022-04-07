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
	
//	flight
	
	@Column(name = "flight_code")
    private String flight_code;
	@Column(name = "airline")
    private String airline;
	@Column(name = "departure_airport")
    private String departure_airport;
	@Column(name = "arrival_airport")
    private String arrival_airport;
	@Column(name = "departing_date")
    private Date departing_date;
	
	@Basic
	@Column(name = "departing_time")
	private Time departing_time;
	

	@Column(name = "arrival_date")
    private  Date arrival_date;
	@Basic
	@Column(name = "arrival_time")
    private Time arrival_time;
	@Column(name = "class_name")
    private String class_name;
	
	 @Column(name = "airpalne")
    private String airpalne;
    
	
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
	public String getFlight_code() {
		return flight_code;
	}
	public void setFlight_code(String flight_code) {
		this.flight_code = flight_code;
	}
	public String getAirline() {
		return airline;
	}
	public void setAirline(String airline) {
		this.airline = airline;
	}
	public String getDeparture_airport() {
		return departure_airport;
	}
	public void setDeparture_airport(String departure_airport) {
		this.departure_airport = departure_airport;
	}
	public String getArrival_airport() {
		return arrival_airport;
	}
	public void setArrival_airport(String arrival_airport) {
		this.arrival_airport = arrival_airport;
	}
	public Date getDeparting_date() {
		return departing_date;
	}
	public void setDeparting_date(Date departing_date) {
		this.departing_date = departing_date;
	}
	public Time getDeparting_time() {
		return departing_time;
	}
	public void setDeparting_time(Time departing_time) {
		this.departing_time = departing_time;
	}
	public Date getArrival_date() {
		return arrival_date;
	}
	public void setArrival_date(Date arrival_date) {
		this.arrival_date = arrival_date;
	}
	public Time getArrival_time() {
		return arrival_time;
	}
	public void setArrival_time(Time arrival_time) {
		this.arrival_time = arrival_time;
	}
	public String getClass_name() {
		return class_name;
	}
	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	public String getAirpalne() {
		return airpalne;
	}
	public void setAirpalne(String airpalne) {
		this.airpalne = airpalne;
	}
	
	
	
}
