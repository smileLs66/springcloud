package com.sz566.auth.service.impl;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.sz566.auth.mapper.TbUserMapper;
import com.sz566.auth.pojo.TbUser;
import com.sz566.auth.service.TbUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ls on 2019/6/16.
 */
@Service
public class TbUserServiceImpl implements TbUserService {

  @Autowired
  private TbUserMapper userMapper;

  @Override
  public TbUser queryTbUserByUserName(String userName) {
    TbUser user = new TbUser();
    user.setUsername(userName);
    QueryWrapper<TbUser> ew = new QueryWrapper<>();
    ew.setEntity(user);
    TbUser tbUser = userMapper.selectOne(ew);
    return tbUser;
  }
}
