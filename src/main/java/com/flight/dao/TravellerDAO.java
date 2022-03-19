package com.flight.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.flight.model.Traveller;

@Repository(value = "travellerDAO")
@Transactional
public class TravellerDAO {
	@Autowired 
    private EntityManager entityManager;
	 private Session getSession() {
	        return entityManager.unwrap(Session.class);
	    }
	  public Traveller save(Traveller t){
	    	getSession().save(t);
	    	getSession().flush();
	        return t;
	    }
	  public List<Traveller> getAll(){
	    	String sql = "from traveller";
	        List<Traveller> products = getSession().createQuery(sql).list();
	        return products;
	    }
	  
	  public Traveller getTravellerById(int pid) {
	        String sql = "from traveller where id = '" + pid + "'";
	        List<Traveller> travellerList = getSession().createQuery(sql).list();
	        return travellerList.get(0);

	    }
	  public Traveller update(Traveller t) {
	        String hql = "update traveller set first_name = '"+t.getFirst_name()+"', last_name = '"+t.getLast_name()+"', NID = '"+t.getNID()+"' , passport_id = '"+t.getPassport_id()+"', gender = '"+t.getGender()+"', contact = '"+t.getContact()+"', email = '"+t.getEmail()+"' where id = '"+t.getId()+"'";
	        Query q = getSession().createQuery(hql);
	        q.executeUpdate();
	        getSession().flush();
	        return t;
	    }
	  
	  public Traveller delete(Traveller t) {
	    	String sql = "delete traveller where id = '"+t.getId()+"'";
	        int delete = getSession().createQuery(sql).executeUpdate();
	        return t;
	    }
}
