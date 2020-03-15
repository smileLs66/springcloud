package com.ls.mapper;

import com.ls.pojo.TbOrder;

public interface TbOrderMapper {
    int insert(TbOrder record);

    int insertSelective(TbOrder record);
}