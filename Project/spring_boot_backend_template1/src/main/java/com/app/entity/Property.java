package com.app.entity;

import javax.persistence.*;
import java.util.Set;

@Entity
public class Property {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long propId;

    
    private String propType;     // flat,bunglow,villa,
    private double propSize;
    private double price;
   
	
	private String flatType;      //1bhk,2bhk.....

	private String bathroom;

	private boolean furnishing;     //furnished or unfurnished

	private String parking;
	
	private int balcony;

	private int rent;
	
	private String deposit;
	
	private String city;
	
	private String area;
	
	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	private String address;
	
	private String pincode;

	private boolean status; 

    @ManyToOne
    @JoinColumn(name = "owner_id")
    private Owner owner;

    @OneToMany(mappedBy = "property")
    private Set<Lease> leases;

	public Long getId() {
		return propId;
	}

	public void setpropId(Long propId) {
		this.propId = propId;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getpropTypee() {
		return propType;
	}

	public void setType(String propType) {
		this.propType = propType;
	}

	public double getpropSize() {
		return propSize;
	}

	public Long getPropId() {
		return propId;
	}

	public void setPropId(Long propId) {
		this.propId = propId;
	}

	public String getPropType() {
		return propType;
	}

	public void setPropType(String propType) {
		this.propType = propType;
	}

	public double getPropSize() {
		return propSize;
	}

	public void setPropSize(double propSize) {
		this.propSize = propSize;
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

	public boolean getFurnishing() {
		return furnishing;
	}

	public void setFurnishing(boolean furnishing) {
		this.furnishing = furnishing;
	}

	public String getParking() {
		return parking;
	}

	public void setParking(String parking) {
		this.parking = parking;
	}

	public int getBalcony() {
		return balcony;
	}

	public void setBalcony(int balcony) {
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

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public void setSize(double propSize) {
		this.propSize = propSize;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Owner getOwner() {
		return owner;
	}

	public void setOwner(Owner owner) {
		this.owner = owner;
	}

	public Set<Lease> getLeases() {
		return leases;
	}

	public void setLeases(Set<Lease> leases) {
		this.leases = leases;
	}

    
}




//Database Relationships
//An Owner can own multiple Properties.
//A Property can have multiple Leases.
//A Tenant can have multiple Leases.
//A Lease can have multiple Payments.
//An Agent can manage multiple Properties.

