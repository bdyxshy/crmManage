package service;

import java.util.List;

import entity.Customer;

public interface CustomerService {
	public List<Customer> searchAll();
	public int searchCount();
	public List<Customer> searchAll(Integer begin, Integer rows);
	public int searchCount(Customer customer);
	public List<Customer> searchAll(Customer customer, int begin, Integer rows);
}
