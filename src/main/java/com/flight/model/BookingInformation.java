package com.flight.model;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "bookingInformation")
@Table(name = "bookingInformation")
public class BookingInformation {
	@Id
	@GeneratedValue
	@Column(name = "id")
	private int id;
	
//	Ticket Information

	private int seat_no;
	private String seat_class;
	private int adult;
	private int children;
	
//	Traveler Information
	private String fname;
	private String lname;
	private String gender;
	private Date tdate;
	private String tcontact_no;
	private String temail;
	private String tpassport_no;
	
//	Payment Information
	private String card_holder_name;
	private int card_number;
	private int cvc;
	private Date pdate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	
	
	public int getAdult() {
		return adult;
	}
	public void setAdult(int adult) {
		this.adult = adult;
	}
	public int getChildren() {
		return children;
	}
	public void setChildren(int children) {
		this.children = children;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	
	
	public String getSeat_class() {
		return seat_class;
	}
	public void setSeat_class(String seat_class) {
		this.seat_class = seat_class;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getTdate() {
		return tdate;
	}
	public void setTdate(Date tdate) {
		this.tdate = tdate;
	}
	public String getTcontact_no() {
		return tcontact_no;
	}
	public void setTcontact_no(String tcontact_no) {
		this.tcontact_no = tcontact_no;
	}
	public String getTemail() {
		return temail;
	}
	public void setTemail(String temail) {
		this.temail = temail;
	}
	public String getTpassport_no() {
		return tpassport_no;
	}
	public void setTpassport_no(String tpassport_no) {
		this.tpassport_no = tpassport_no;
	}
	public String getCard_holder_name() {
		return card_holder_name;
	}
	public void setCard_holder_name(String card_holder_name) {
		this.card_holder_name = card_holder_name;
	}
	public int getCard_number() {
		return card_number;
	}
	public void setCard_number(int card_number) {
		this.card_number = card_number;
	}
	public int getCvc() {
		return cvc;
	}
	public void setCvc(int cvc) {
		this.cvc = cvc;
	}
	public int getSeat_no() {
		return seat_no;
	}
	public void setSeat_no(int seat_no) {
		this.seat_no = seat_no;
	}
	public Date getPdate() {
		return pdate;
	}
	public void setPdate(Date pdate) {
		this.pdate = pdate;
	}

	
	
	
	
	
	
	
	
	
	
}
