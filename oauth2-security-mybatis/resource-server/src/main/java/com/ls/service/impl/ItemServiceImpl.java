package com.ls.service.impl;

import com.ls.mapper.ItemMapper;
import com.ls.pojo.Item;
import com.ls.service.ItemService;
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
