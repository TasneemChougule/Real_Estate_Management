package com.cdac.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.cdac.dto.Property;

@Repository
public class PropertyDaoImple implements PropertyDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;


	@Override
	public void insertProperty(Property property) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.save(property);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});

	}


	@Override
	public List<Property> selectAll(String emailId) {
		List<Property> propList = hibernateTemplate.execute(new HibernateCallback<List<Property>>() {

			@Override
			public List<Property> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Property where emailId = ?");
				q.setString(0, emailId);
				List<Property> li = q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
			
		});
		return propList;
	}


	@Override
	public List<Property> searchProp(Property property) {
		List<Property> propList = hibernateTemplate.execute(new HibernateCallback<List<Property>>() {

			@Override
			public List<Property> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Query q = session.createQuery("from Property where (flatType = ?) and (furnishing = ?) and (city = ?) and (rent <= ?)");
				q.setString(0, property.getFlatType());
				q.setString(1, property.getFurnishing());
				q.setString(2, property.getCity());
				q.setInteger(3, property.getRent());
				List<Property> li = q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
		});
		return propList;
	}


	@Override
	public Property selectProperty(int propertyId) {
		Property property = hibernateTemplate.execute(new HibernateCallback<Property>() {

			@Override
			public Property doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				Property pr = (Property)session.get(Property.class, propertyId);
				tr.commit();
				session.flush();
				session.close();
				return pr;
			}
			
		});
		return property;
	}


	@Override
	public void updateProperty(Property property) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				
//				Expense ex = (Expense)session.get(Expense.class, expense.getExpenseId());
//				ex.setItemName(expense.getItemName());
//				ex.setPrice(expense.getPrice());
//				ex.setPurchaseDate(expense.getPurchaseDate()); 
				
				session.update(property);
				
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});	
	}


	@Override
	public void deleteProperty(int propertyId) {
		 hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.delete(new Property(propertyId));
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
	}

}
