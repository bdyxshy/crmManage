package controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import service.CustomerService;
import util.AgentEnum;
import entity.Customer;

@Controller
public class CustomerController {
	@Autowired
	CustomerService customerService;
	//不使用easyUi构建表格
	@RequestMapping(value = "searchAll")
	public ModelAndView searchAll() {
		ModelAndView mv = new ModelAndView("customer");
		List<Customer> list = customerService.searchAll();
		mv.addObject("customers", list);
		return mv;
	}
	//html 构建表格
	@RequestMapping(value = "searchAll2")
	public String searchAll2() {
		return "computer/customer2";
	}
	@RequestMapping(value = "getCustomers2")
	@ResponseBody
	public List<Customer> getCustomers2() {
		List<Customer> list = customerService.searchAll();
		return list;
	}
	//javaScript 构建表格
	@RequestMapping(value = "searchAll3")
	public String searchAll3(HttpSession session) {
		AgentEnum agent=(AgentEnum) session.getAttribute("agent");
		return agent+"/customer3";
	}
	//分页
	@RequestMapping(value = "getCustomers3")
	@ResponseBody
	public HashMap<String,Object> getCustomers3(Integer page,Integer rows) {
		int begin=(page-1)*rows;
		int total=customerService.searchCount();
		List<Customer> list = customerService.searchAll(begin,rows);
		HashMap<String,Object> map=new HashMap<>();
		map.put("total",total);
		map.put("rows", list);
		return map;
	}
	//分页+查询
		@RequestMapping(value = "getCustomersByCondition")
		@ResponseBody
		public HashMap<String,Object> getCustomersByCondition(Customer customer,Integer page,Integer rows) {
			int begin=(page-1)*rows;
			int total=customerService.searchCount(customer);
			List<Customer> list = customerService.searchAll(customer,begin,rows);
			HashMap<String,Object> map=new HashMap<>();
			map.put("total",total);
			map.put("rows", list);
			return map;
		}
}
