package com.cdac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.PropertyDao;
import com.cdac.dto.Property;

@Service
public class PropertyServiceImple implements PropertyService {

	@Autowired
	private PropertyDao propertyDao;
	
	@Override
	public void addProperty(Property property) {
		propertyDao.insertProperty(property);

	}

	@Override
	public List<Property> selectAll(String emailId) {	
		return propertyDao.selectAll(emailId);
	}

	@Override
	public List<Property> searchProp(Property property) {
		return propertyDao.searchProp(property);
	}

	@Override
	public Property findProperty(int propertyId) {
		return propertyDao.selectProperty(propertyId);
	}

	@Override
	public void modifyProperty(Property property) {
		propertyDao.updateProperty(property);
		
	}

	@Override
	public void removeProperty(int propertyId) {
		 propertyDao.deleteProperty(propertyId);
	}

}
