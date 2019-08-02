package org.lanqiao.crm.test;


import org.junit.jupiter.api.Test;
import org.lanqiao.crm.pojo.Customer;
import org.lanqiao.crm.service.ICustomerService;
import org.lanqiao.crm.service.impl.CustomerServiceImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class CustomerTest {

//    @Test
//    public void getCustomerTest(){
//        ApplicationContext ac = new ClassPathXmlApplicationContext("spring-*.xml");
//        ICustomerService service = ac.getBean("customerService", CustomerServiceImpl.class);
//        Customer c = service.getCustomer(16L);
//        System.out.println(c);
//    }

//    @Test
//    public void selectTest(){
//        ApplicationContext ac = new ClassPathXmlApplicationContext("spring-*.xml");
//        ICustomerService service = ac.getBean("customerService", CustomerServiceImpl.class);
//        Customer customer = new Customer();
//        customer.setCustName("张");
//        List<Customer> c = service.getCusetomerByOthers(customer);
//        System.out.println(c);
//    }
//
//    @Test
//    public void getAll(){
//        ApplicationContext ac = new ClassPathXmlApplicationContext("spring-*.xml");
//        ICustomerService service = ac.getBean("customerService", CustomerServiceImpl.class);
//        List<Customer> customerList = service.getAll();
//        for (Customer customer :customerList){
//            System.out.println(customer);
//        }
//    }
}
