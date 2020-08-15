package com.ls.user.controller;

import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class UserController {

  @GetMapping("/getHello")
  @ApiOperation(value = "hello", tags = {"user"})
    public String getHello() {

        return "Hello";
    }

  @PostMapping("/getName")
  @ApiOperation(value = "获取名称", tags = {"user"})
  public String getName(String name) {

    return "spring-cloud"+name;
  }

}
