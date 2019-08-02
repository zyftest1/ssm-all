package org.lanqiao.crm.service.impl;

import org.lanqiao.crm.dao.CustomerMapper;
import org.lanqiao.crm.pojo.Customer;
import org.lanqiao.crm.service.ICustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service("customerService")
public class CustomerServiceImpl implements ICustomerService {
    @Autowired
    private CustomerMapper customerMapper;

    @Override
    public Customer getCustomer(Long id) {
        return customerMapper.selectByPrimaryKey(id);
    }

    @Override
    public List<Customer> getAll() {
//        System.out.println(customerMapper.selectAll());
        return customerMapper.selectAll();
    }

    @Override
    public int removeCustomer(Integer id) {
        return customerMapper.deleteByPrimaryKey(Long.valueOf(id));
    }

    @Override
    public int modifyCustomer(Customer customer) {
        return customerMapper.updateByPrimaryKeySelective(customer);
    }

    @Override
    public int insertCustomer(Customer customer) {
        return customerMapper.insertSelective(customer);
    }

    @Override
    public List<Customer> getCusetomerByOthers(Customer customer) {
        System.out.println(customerMapper.selectByOthers(customer));
        return customerMapper.selectByOthers(customer);
    }

}
