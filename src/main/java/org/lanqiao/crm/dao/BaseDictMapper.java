package org.lanqiao.crm.dao;

import org.lanqiao.crm.pojo.BaseDict;

import java.util.List;

public interface BaseDictMapper {
    int deleteByPrimaryKey(String dictId);

    int insert(BaseDict record);

    int insertSelective(BaseDict record);

    BaseDict selectByPrimaryKey(String dictId);

    List<BaseDict> selectByTypeCode(String typeCode);

    int updateByPrimaryKeySelective(BaseDict record);

    int updateByPrimaryKey(BaseDict record);


}