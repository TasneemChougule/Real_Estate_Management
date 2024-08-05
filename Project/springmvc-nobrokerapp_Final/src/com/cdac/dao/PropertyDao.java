package com.cdac.dao;

import java.util.List;

import com.cdac.dto.Property;

public interface PropertyDao {
	void insertProperty(Property property);
	List<Property> selectAll(String emailId);
	List<Property> searchProp(Property property);
	Property selectProperty(int propertyId);
	void updateProperty(Property property);
	void deleteProperty(int propertyId);
}
