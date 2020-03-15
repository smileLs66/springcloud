package com.ls.pay.mapper;


import com.ls.pay.pojo.TbPay;

public interface TbPayMapper {
    int insert(TbPay record);

    int insertSelective(TbPay record);
}