package org.lanqiao.crm.service.impl;

import org.lanqiao.crm.dao.BaseDictMapper;
import org.lanqiao.crm.pojo.BaseDict;
import org.lanqiao.crm.service.IBaseDictService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BaseDictServiceImpl implements IBaseDictService {
    @Autowired
    private BaseDictMapper baseDictMapper;

    @Override
    public List<BaseDict> getCustomerSource(String typeCode) {
        return baseDictMapper.selectByTypeCode(typeCode);
    }

    @Override
    public List<BaseDict> getCustomerJob(String typeCode) {
        return baseDictMapper.selectByTypeCode(typeCode);
    }

    @Override
    public List<BaseDict> getCustomerLevel(String typeCode) {
        return baseDictMapper.selectByTypeCode(typeCode);
    }



}
