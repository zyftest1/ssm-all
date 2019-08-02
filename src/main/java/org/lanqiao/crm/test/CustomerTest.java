package org.lanqiao.crm.test;


import org.junit.jupiter.api.Test;
import org.lanqiao.crm.pojo.Customer;
import org.lanqiao.crm.service.ICustomerService;
import org.lanqiao.crm.service.impl.CustomerServiceImpl;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class CustomerTest {

    @Test
    public void getCustomerTest(){
        ApplicationContext ac = new ClassPathXmlApplicationContext("spring-*.xml");
        ICustomerService service = ac.getBean("customerService", CustomerServiceImpl.class);
        Customer c = service.getCustomer(14L);
        System.out.println(c);
    }
}
