package com.ls.auth.service;


import com.ls.auth.pojo.TbUser;

/**
 * Created by ls on 2019/6/16.
 */
public interface TbUserService {

  TbUser queryTbUserByUserName(String userName);


}
