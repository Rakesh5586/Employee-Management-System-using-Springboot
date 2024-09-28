package com.Rakesh.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class EmployeeModel 
{
  @Id
  private int empid;
  private String name;
  private String password;
  private String email;
  private String gender;
  private String mobileNumber;
  private String state;
  private String country;
  private String address;
  //PDC+PPC+PSM+PGM+toString
public EmployeeModel() {
	super();
}
public EmployeeModel(int empid, String name, String password, String email, String gender, String mobileNumber,
		String state, String country, String address) {
	super();
	this.empid = empid;
	this.name = name;
	this.password = password;
	this.email = email;
	this.gender = gender;
	this.mobileNumber = mobileNumber;
	this.state = state;
	this.country = country;
	this.address = address;
}
public int getEmpid() {
	return empid;
}
public void setEmpid(int empid) {
	this.empid = empid;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
public String getMobileNumber() {
	return mobileNumber;
}
public void setMobileNumber(String mobileNumber) {
	this.mobileNumber = mobileNumber;
}
public String getState() {
	return state;
}
public void setState(String state) {
	this.state = state;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
@Override
public String toString() {
	return "EmployeeModel [empid=" + empid + ", name=" + name + ", password=" + password + ", email=" + email
			+ ", gender=" + gender + ", mobileNumber=" + mobileNumber + ", state=" + state + ", country=" + country
			+ ", address=" + address + "]";
}
}
