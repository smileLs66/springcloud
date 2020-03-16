package com.ls.pay.controller;

import com.ls.pay.pojo.TbPay;
import com.ls.pay.service.PayService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: ls
 * @Date: 2020/3/15 19:20
 */
@RestController
public class PayController {
  @Autowired
  private PayService payService;

  @GetMapping("/savePay")
  public Boolean savePay(){
    TbPay tbPay = new TbPay();
    tbPay.setPayment(100L);
    tbPay.setPostFee(10L);
    tbPay.setStatus(2);
    Boolean aBoolean = payService.savePayment(tbPay);
    return  aBoolean;
  }

}
