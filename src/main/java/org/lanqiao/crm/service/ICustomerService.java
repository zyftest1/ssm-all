package org.lanqiao.crm.service;

import org.lanqiao.crm.dao.CustomerMapper;
import org.lanqiao.crm.pojo.Customer;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


public interface ICustomerService {

    public Customer getCustomer(Long id);

    public List<Customer> getAll();


    int removeCustomer(Integer id);

    int modifyCustomer(Customer customer);

    int insertCustomer(Customer customer);

    List<Customer> getCusetomerByOthers(Customer customer);
}
