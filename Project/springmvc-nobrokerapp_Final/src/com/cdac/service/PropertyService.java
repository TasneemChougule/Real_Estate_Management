package com.cdac.service;

import java.util.List;

import com.cdac.dto.Property;

public interface PropertyService {
	void addProperty(Property property);
	List<Property> selectAll(String emailId);
	List<Property> searchProp(Property property);
	Property findProperty(int propertyId);
	void modifyProperty(Property property);
	void removeProperty(int propertyId);
}
