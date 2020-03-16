package com.ls.controller;

import com.ls.feign.UserFeign;
import com.ls.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/user" )
public class UserController {
    //注入Feign接口
    @Autowired
    private UserFeign userFeign;

    @RequestMapping("/find")
    public List<User> find() {
        return userFeign.find();
    }
}

