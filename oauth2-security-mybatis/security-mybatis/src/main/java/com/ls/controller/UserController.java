package com.ls.controller;

import com.ls.mapper.TbUserMapper;
import com.ls.pojo.TbUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@RestController
@RequestMapping("/user")
public class UserController {

  @Autowired
  private TbUserMapper tbUserMapper;

  @GetMapping("/find")
  public TbUser find(Long id) {

    TbUser tbUser = tbUserMapper.selectByPrimaryKey(id);
    return tbUser;
  }
}
