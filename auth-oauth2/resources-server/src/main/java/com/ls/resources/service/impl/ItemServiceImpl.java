package com.ls.resources.service.impl;

import com.ls.resources.pojo.Item;
import com.ls.resources.mapper.ItemMapper;
import com.ls.resources.service.ItemService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @Author: ls
 * @Date: 2019/11/9 16:22
 */
@Service
public class ItemServiceImpl implements ItemService {

  @Autowired
  private ItemMapper itemMapper;

  @Override
  public List<Item> queryAllItem() {
    List<Item> items = itemMapper.selectList(null);

    return items;

  }
}
