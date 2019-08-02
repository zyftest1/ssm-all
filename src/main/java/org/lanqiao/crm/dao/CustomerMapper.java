package org.lanqiao.crm.dao;

import org.apache.ibatis.annotations.Param;
import org.lanqiao.crm.pojo.Customer;

import java.util.List;
import java.util.Map;

public interface CustomerMapper {
    int deleteByPrimaryKey(Long custId);

    int insert(Customer record);

    int insertSelective(Customer record);

    Customer selectByPrimaryKey(Long custId);

    int updateByPrimaryKeySelective(Customer record);

    int updateByPrimaryKey(Customer record);

    List<Customer> selectAll();

    List<Customer> selectByOthers(Customer customer);
}