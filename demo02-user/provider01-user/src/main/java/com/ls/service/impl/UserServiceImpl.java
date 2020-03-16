package com.ls.service.impl;

import com.ls.mapper.UserMapper;
import com.ls.pojo.User;
import com.ls.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;


    @Override
    public List<User> findAll() {

        return userMapper.selectList(null);
    }
}
