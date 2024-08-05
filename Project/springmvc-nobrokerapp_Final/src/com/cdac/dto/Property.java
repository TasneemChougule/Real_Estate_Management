package com.cdac.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "property")
public class Property {
	@Id
	@GeneratedValue
	@Column(name="property_id")
	private int propertyId;
	@Column(name="flat_type")
	private String flatType;
	@Column(name="bathroom")
	private String bathroom;
	@Column(name="furnishing")
	private String furnishing;
	@Column(name="parking")
	private String parking;
	@Column(name="balcony")
	private String balcony;
	@Column(name="rent")
	private int rent;
	@Column(name="deposit")
	private String deposit;
	@Column(name="city")
	private String city;
	@Column(name="area")
	private String area;
	@Column(name="address")
	private String address;
	@Column(name="pincode")
	private String pincode;
	@Column(name="owner_name")
	private String ownerName;
	@Column(name="mobile")
	private String mobileNo;
	@Column(name="email_id")
	private String emailId;
	public Property() {
		super();
	}
	
	public Property(int propertyId) {
		this.propertyId=propertyId;
	}

	public int getPropertyId() {
		return propertyId;
	}

	public void setPropertyId(int propertyId) {
		this.propertyId = propertyId;
	}



	public String getFlatType() {
		return flatType;
	}
	public void setFlatType(String flatType) {
		this.flatType = flatType;
	}
	public String getBathroom() {
		return bathroom;
	}
	public void setBathroom(String bathroom) {
		this.bathroom = bathroom;
	}
	public String getFurnishing() {
		return furnishing;
	}
	public void setFurnishing(String furnishing) {
		this.furnishing = furnishing;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public String getBalcony() {
		return balcony;
	}
	public void setBalcony(String balcony) {
		this.balcony = balcony;
	}
	public int getRent() {
		return rent;
	}
	public void setRent(int rent) {
		this.rent = rent;
	}
	public String getDeposit() {
		return deposit;
	}
	public void setDeposit(String deposit) {
		this.deposit = deposit;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPincode() {
		return pincode;
	}
	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
	public String getOwnerName() {
		return ownerName;
	}
	public void setOwnerName(String ownerName) {
		this.ownerName = ownerName;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	
	
}
