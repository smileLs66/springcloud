package com.ls.controller;

import com.ls.pojo.TbOrder;
import com.ls.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class OrderController {

  @Autowired
  private OrderService orderService;

  @GetMapping("/test")
  public Boolean contextLoads() {
    TbOrder tbOrder = new TbOrder();
    tbOrder.setStatus(1);

    Boolean aBoolean = orderService.saveOrder(tbOrder);
    return aBoolean;
  }

}
