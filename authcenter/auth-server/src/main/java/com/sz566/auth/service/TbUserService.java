package com.sz566.auth.service;


import com.sz566.auth.pojo.TbUser;

/**
 * Created by ls on 2019/6/16.
 */
public interface TbUserService {

  TbUser queryTbUserByUserName(String userName);


}
