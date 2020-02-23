package com.ls.resource.controller;

import com.ls.resource.pojo.Item;
import com.ls.resource.service.ItemService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Author: ls
 * @Date: 2019/11/9 16:10
 */
@RestController
public class ItemController {

  @Autowired
private ItemService itemService;

  @GetMapping("/contents")
  public List<Item> queryAllItem() {
  return   itemService.queryAllItem();
  }
}
