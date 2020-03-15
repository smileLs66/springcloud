package com.ls.pay.service.impl;

import com.codingapi.tx.annotation.ITxTransaction;

import com.ls.pay.mapper.TbPayMapper;
import com.ls.pay.pojo.TbPay;
import com.ls.pay.service.PayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PayServiceImpl implements PayService, ITxTransaction {

  @Autowired
  private TbPayMapper tbPayMapper;


  @Override
  public Boolean savePayment(TbPay tbPay) {
    int i = tbPayMapper.insertSelective(tbPay);
    if (i > 0) {
      return true;
    }
    return false;
  }
}
