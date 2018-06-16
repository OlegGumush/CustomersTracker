package com.tracker.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tracker.dao.CustomerDao;
import com.tracker.entity.Customer;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	public CustomerDao customersDao;
	
	@Override
	@Transactional
	public List<Customer> getCustomers() {
		return customersDao.getCustomers();
	}

	@Override
	@Transactional
	public void saveCustomer(Customer customer) {
		customersDao.saveCustomer(customer);
	}

	@Override
	@Transactional
	public Customer getCustomer(int theId) {
		return customersDao.getCustomer(theId);
	}

	@Override
	@Transactional
	public void deleteCustomer(int theId) {
		customersDao.deleteCustomer(theId);	
	}

	@Override
	@Transactional
	public List<Customer> searchCustomers(String theSearchName) {
		return 	customersDao.searchCustomers(theSearchName);
	}
}
