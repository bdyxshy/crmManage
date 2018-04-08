package service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import dao.CustomerDao;
import entity.Customer;
import service.CustomerService;
@Service
public class CustomerImpl implements CustomerService {
	@Autowired
	CustomerDao customerDao;
	public List<Customer> searchAll() {
		return customerDao.searchAll();
	}
	public int searchCount() {
		return customerDao.searchCount();
	}
	public List<Customer> searchAll(Integer begin, Integer rows) {
		return customerDao.searchByPage(begin, rows);
	}
	public int searchCount(Customer customer) {
		return customerDao.searchCountByCondition(customer);
	}
	public List<Customer> searchAll(Customer customer, int begin, Integer rows) {
		return customerDao.searchByCondition(customer,begin, rows);
	}
}
