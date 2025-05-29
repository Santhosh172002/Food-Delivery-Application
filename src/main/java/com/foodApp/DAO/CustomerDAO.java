package com.foodApp.DAO;

import java.util.List;

import com.foodApp.DTO.Customer;

public interface CustomerDAO {

	List getCustomers();
	
	Customer getCustomer(String cEmail);
	
	boolean updateCustomer(Customer c);
	
	boolean addCustomer(String cName,String cEmail,long cNumber,String cPassword);
	
	boolean removeCustomer(String cEmail);
	
	
}
