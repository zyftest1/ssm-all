package org.lanqiao.crm.controller;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.lanqiao.crm.pojo.BaseDict;
import org.lanqiao.crm.pojo.Customer;
import org.lanqiao.crm.service.IBaseDictService;
import org.lanqiao.crm.service.ICustomerService;
import org.omg.CORBA.OBJ_ADAPTER;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/customer/")
public class CustomerController {
    @Autowired
    private ICustomerService customerService;

    @Autowired
    private IBaseDictService baseDictService;

//    @RequestMapping("cus.do")
//    public String getCustomer(Long id, Model model){
//        Customer customer = customerService.getCustomer(id);
//        model.addAttribute("cus",customer);
//        return "success";
//    }

//    @RequestMapping("index.do")
//    public String  customerIndex(Model model, @RequestParam(value = "pageNum",defaultValue = "1")Integer pageNum){
//        //分页
//        PageHelper.startPage(pageNum,10);
//        List<Customer> customerList = customerService.getAll();
//        PageInfo<Customer> page = new PageInfo<Customer>(customerList);
////        page.setList();//这种方法不行分页不显示
//
//        List<BaseDict> customerSources = baseDictService.getCustomerSource("002");
//        List<BaseDict> customerJobs = baseDictService.getCustomerJob("001");
//        List<BaseDict> customerLevels = baseDictService.getCustomerLevel("006");
////        model.addAttribute("customerList",customerList);
//        model.addAttribute("page",page);
//        model.addAttribute("customerSources",customerSources);
//        model.addAttribute("customerJobs",customerJobs);
//        model.addAttribute("customerLevels",customerLevels);
//        return "customer";
//    }

    @RequestMapping(value = "index/{pageNum}",method = RequestMethod.GET)
    public String  customerIndex(Model model, @PathVariable(value = "pageNum")Integer pageNum){
        //分页
        if (pageNum == null){
            pageNum = 1;
          }
        PageHelper.startPage(pageNum,10);

        List<Customer> customerList = customerService.getAll();

        PageInfo<Customer> page = new PageInfo<Customer>();
//        page.setList();//这种方法不行分页不显示
        page.setList(customerList);

        List<BaseDict> customerSources = baseDictService.getCustomerSource("002");
        List<BaseDict> customerJobs = baseDictService.getCustomerJob("001");
        List<BaseDict> customerLevels = baseDictService.getCustomerLevel("006");
        System.out.println(customerList);
//        model.addAttribute("customerList",customerList);
        model.addAttribute("page",page);
        model.addAttribute("customerSources",customerSources);
        model.addAttribute("customerJobs",customerJobs);
        model.addAttribute("customerLevels",customerLevels);
        return "customer";
    }


    @RequestMapping(value = "index2/{pageNum}",method = RequestMethod.GET)
    @ResponseBody
    public Object  selectCustomer(Model model, @PathVariable(value = "pageNum")Integer pageNum,String custName,String custSource,String custIndustry,String custLevel){
        Map<String,String> map = new HashMap<>();
        //分页
        if (pageNum == null){
            pageNum = 1;
        }
        Customer customer = new Customer();
        customer.setCustName(custName);
        customer.setCustIndustry(custIndustry);
        customer.setCustLevel(custLevel);
        customer.setCustSource(custSource);
        PageHelper.startPage(pageNum,10);
        List<Customer> customerList = customerService.getCusetomerByOthers(customer);
        PageInfo<Customer> page = new PageInfo<Customer>(customerList);
//        page.setList();//这种方法不行分页不显示

        List<BaseDict> customerSources = baseDictService.getCustomerSource("002");
        List<BaseDict> customerJobs = baseDictService.getCustomerJob("001");
        List<BaseDict> customerLevels = baseDictService.getCustomerLevel("006");
//        model.addAttribute("customerList",customerList);
        model.addAttribute("page",page);
        model.addAttribute("customerSources",customerSources);
        model.addAttribute("customerJobs",customerJobs);
        model.addAttribute("customerLevels",customerLevels);
        map.put("msg","查询成功");
        return map;
    }

    @RequestMapping(value = "index/{id}",method = RequestMethod.DELETE)
    @ResponseBody
    public  Object  delete( @PathVariable("id") int id){
        Map<String,String> map = new HashMap<>();
        customerService.removeCustomer(id);
        map.put("msg","删除成功");
        return map ;
    }


    @RequestMapping(value = "cus/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Object getCustomer(@PathVariable("id") Integer id,Model  model){
        Map<String,Object> map = new HashMap<>();

        Customer customer = customerService.getCustomer(Long.valueOf(id));
        List<BaseDict> customerSources = baseDictService.getCustomerSource("002");
        List<BaseDict> customerJobs = baseDictService.getCustomerJob("001");
        List<BaseDict> customerLevels = baseDictService.getCustomerLevel("006");
        map.put("customer",customer);
        map.put("customerSources",customerSources);
        map.put("customerJobs",customerJobs);
        map.put("customerLevels",customerLevels);
//        model.addAttribute("customer",customer);
        return map;
    }

    @RequestMapping(value = "index",method = RequestMethod.PUT)
    @ResponseBody
    public Object update(Customer customer){//不能加@PathVariable("customer")
        Map<String, String> map = new HashMap<>();
        customerService.modifyCustomer(customer);
        map.put("msg","更新成功");
        return map;
    }

    @RequestMapping(value = "indexInsert",method = RequestMethod.POST)
    @ResponseBody
    public Object insert(Customer customer){
        Map<String,String> map = new HashMap<>();
        customerService.insertCustomer(customer);

//      System.out.println("插入");
        map.put("msg","插入成功");
        return map;
    }


}
