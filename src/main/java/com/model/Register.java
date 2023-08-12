package com.model;

public class Register {

	private int regId;
	private String fname;
	private String lname;
	private String city;
	private String state;
	private String gender;
	private String email;
	private String occupation;
	private String mobno;
	private int accbal;
	private String password;
	public Register(int regId,String fname, String lname, String city, String state, String gender, String email, 
			String occupation,String mobno,int accbal,String password) {
		super();
		this.regId=regId;
		this.fname = fname;
		this.lname = lname;
		this.city = city;
		this.state = state;
		this.gender = gender;
		this.email = email;
		this.occupation = occupation;
		this.mobno = mobno;
		this.accbal = accbal;
		this.password=password;
		
	}
	public int getRegId() {
		return regId;
	}
	public void setRegId(int regId) {
		this.regId = regId;
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
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobno() {
		return mobno;
	}
	public void setMobno(String mobno) {
		this.mobno = mobno;
	}
	public String getOccupation() {
		return occupation;
	}
	public void setOccupation(String occupation) {
		this.occupation = occupation;
	}
	public int getAccbal() {
		return accbal;
	}
	public void setAccbal(int accbal) {
		this.accbal = accbal;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
