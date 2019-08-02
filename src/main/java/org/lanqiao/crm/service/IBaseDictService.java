package org.lanqiao.crm.service;

import org.lanqiao.crm.pojo.BaseDict;

import java.util.List;

public interface IBaseDictService {
//    根据字典获取
//    客户来源
    public List<BaseDict> getCustomerSource(String typeCode);
//  客户行业
    public List<BaseDict> getCustomerJob(String typeCode);
//  客户级别
    public List<BaseDict> getCustomerLevel(String typeCode);

}
