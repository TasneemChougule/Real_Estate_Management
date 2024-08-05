package com.app.entity;

import javax.persistence.*;
import java.util.Set;

@Entity
public class Agent {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;
    private String contactInfo;

    @OneToMany(mappedBy = "agent")
    private Set<Property> properties;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() { 
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContactInfo() {
		return contactInfo;
	}

	public void setContactInfo(String contactInfo) {
		this.contactInfo = contactInfo;
	}

	public Set<Property> getProperties() {
		return properties;
	}

	public void setProperties(Set<Property> properties) {
		this.properties = properties;
	}

    
}





//Database Relationships
//An Owner can own multiple Properties.
//A Property can have multiple Leases.
//A Tenant can have multiple Leases.
//A Lease can have multiple Payments.
//An Agent can manage multiple Properties.

