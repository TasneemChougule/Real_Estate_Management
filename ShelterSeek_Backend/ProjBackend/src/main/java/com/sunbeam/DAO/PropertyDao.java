package com.sunbeam.DAO;

import java.util.List;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.sunbeam.DTO.PropertyDTO;
import com.sunbeam.entities.Property;

public interface PropertyDao extends JpaRepository<Property, Long> {
	Set<Property> findByOwnerId(Long ownerId);
	
	 @Query("SELECT p FROM Property p WHERE p.owner.id = :ownerId")
	    List<Property> findPropertiesByOwnerId(Long ownerId);
	 
	 
	 @Query("SELECT p FROM Property p LEFT JOIN FETCH p.owner WHERE p.id = :id")
	    Property findPropertyByIdWithOwner(@Param("id") Long id);
	}
	 


