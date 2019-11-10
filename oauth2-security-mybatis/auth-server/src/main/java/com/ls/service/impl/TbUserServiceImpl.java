package com.ls.service.impl;



import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.ls.mapper.TbUserMapper;
import com.ls.pojo.TbUser;
import com.ls.service.TbUserService;
import java.util.List;
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
