package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import entity.Customer;

public interface CustomerDao {
	public List<Customer> searchAll();
	public int searchCount();
	public List<Customer> searchByPage(Integer begin,Integer rows);
	public int searchCountByCondition(Customer customer);
	public List<Customer> searchByCondition(@Param(value="customer")Customer customer,@Param(value="begin") int begin,
			@Param(value="rows")Integer rows);
}
