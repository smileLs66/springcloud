package com.ls.service.impl;


import com.codingapi.tx.annotation.TxTransaction;
import com.ls.feign.PayFeign;
import com.ls.mapper.TbOrderMapper;
import com.ls.pojo.TbOrder;
import com.ls.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class OrderServiceImpl implements OrderService {

  @Autowired
  private TbOrderMapper tbOrderMapper;

  @Autowired
  private PayFeign payFeign;

  @TxTransaction(isStart = true)
  //@Transactional必须要去掉，否则事务补偿不一致
  @Override
  public Boolean saveOrder(TbOrder tbOrder) {
    int i = tbOrderMapper.insert(tbOrder);
    if (i > 0) {
      System.out.println("订单创建成功");
    }
    Boolean aBoolean = payFeign.savePay();
    if (aBoolean) {
      System.out.println("付款成功");
    }
    if (i > 0 && aBoolean) {
      return true;
    }
    return false;
  }
}
