package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.Property;
import com.cdac.dto.User;
import com.cdac.service.PropertyService;

@Controller
public class PropertyController {
	
	@Autowired
	private PropertyService propertyService;

	
	@RequestMapping(value = "/prep_owner_choice.htm",method = RequestMethod.GET)
	public String prepOwnerChoice(ModelMap map) {
		map.put("property", new Property());
		return "owner";
	}
	
	
	@RequestMapping(value = "/owner.htm",method = RequestMethod.POST)
	public String addProperty(Property property,HttpSession session) {
		String emailId = "" ;
		if((User)session.getAttribute("user") != null) {
		emailId = ((User)session.getAttribute("user")).getEmailId();
		property.setEmailId(emailId);
		propertyService.addProperty(property);
		}
		return "owner";
	}
	
	@RequestMapping(value = "/my_ads.htm",method = RequestMethod.GET)
	public String allProperty(ModelMap map,HttpSession session) {
		String emailId = "";
		if((User)session.getAttribute("user") != null) {
		emailId = ((User)session.getAttribute("user")).getEmailId();
//		System.out.println(emailId);
		List<Property> li = propertyService.selectAll(emailId);
		map.put("propList", li);
		}
		return "myads";
	}
	
	@RequestMapping(value = "/prep_tenant.htm",method = RequestMethod.GET)
	public String Choice(ModelMap map) {
		map.put("property", new Property());
		return "tenant";
	}

	
	@RequestMapping(value = "/result_pg.htm",method = RequestMethod.POST)
	public String searchProperty(ModelMap map,Property property) {
		List<Property> li = propertyService.searchProp(property);
		map.put("resultList", li);
		return "result";
	}
	
	@RequestMapping(value = "/property_update_form.htm",method = RequestMethod.GET)
	public String propertyUpdateForm(@RequestParam int propertyId,ModelMap map) {
		
		Property prop = propertyService.findProperty(propertyId);
		map.put("property", prop);
		return "property_update_form";
	}
	
	@RequestMapping(value = "/property_update.htm",method = RequestMethod.POST)
	public String propertyUpdate(Property property,ModelMap map,HttpSession session) {
		
		String emailId = ((User)session.getAttribute("user")).getEmailId();
		property.setEmailId(emailId);
		propertyService.modifyProperty(property);
			
		List<Property> li = propertyService.selectAll(emailId);
		map.put("propList", li);
		return "myads";
	}
	
	
	@RequestMapping(value = "/property_delete.htm",method = RequestMethod.GET)
	public String propertyDelete(@RequestParam int propertyId,ModelMap map,HttpSession session) {
		
		String emailId = "";
		if((User)session.getAttribute("user") != null) {
			propertyService.removeProperty(propertyId);
			emailId = ((User)session.getAttribute("user")).getEmailId();
			List<Property> li = propertyService.selectAll(emailId);
			map.put("propList", li);
		}
		return "myads";
	}
}
