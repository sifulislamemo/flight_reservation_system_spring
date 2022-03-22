package com.flight.model;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity(name = "flight")
@Table(name = "flight")
public class Flight {
	@Id
	@GeneratedValue
	@Column(name = "id")
	 private int id;
	@Column(name = "airline")
    private String airline;
	@Column(name = "departure_airport")
    private String departure_airport;
	@Column(name = "arrival_airport")
    private String arrival_airport;
	@Column(name = "departing_date")
    private Date departing_date;
//    private Time departing_time;
//    @DateTimeFormat(pattern = "yyyy-MM-dd")
//    private  Date arrival_date;
//    private String arrival_time;
	@Column(name = "class_name")
    private String class_name;
	@Column(name = "flight_charge")
    private double flight_charge;
	 @Column(name = "airpalne")
    private String airpalne;
    @Column(name = "flight_name")
    private String flight_name;
    @Column(name = "seatNo")
    private String seatNo;
    @Column(name = "discount")
    private double discount;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
//	public Date getDeparting_date() {
//		return departing_date;
//	}
//	public void setDeparting_date(Date departing_date) {
//		this.departing_date = departing_date;
//	}
//	
	
//	public Date getArrival_date() {
//		return arrival_date;
//	}
//	public void setArrival_date(Date arrival_date) {
//		this.arrival_date = arrival_date;
//	}
//	public String getArrival_time() {
//		return arrival_time;
//	}
//	public void setArrival_time(String arrival_time) {
//		this.arrival_time = arrival_time;
//	}
	public String getClass_name() {
		return class_name;
	}

	
	public void setClass_name(String class_name) {
		this.class_name = class_name;
	}
	public double getFlight_charge() {
		return flight_charge;
	}
	public void setFlight_charge(double flight_charge) {
		this.flight_charge = flight_charge;
	}
	public String getAirpalne() {
		return airpalne;
	}
	public void setAirpalne(String airpalne) {
		this.airpalne = airpalne;
	}
	public String getFlight_name() {
		return flight_name;
	}
	public void setFlight_name(String flight_name) {
		this.flight_name = flight_name;
	}
	public String getSeatNo() {
		return seatNo;
	}
	public void setSeatNo(String seatNo) {
		this.seatNo = seatNo;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	
    
    
}
