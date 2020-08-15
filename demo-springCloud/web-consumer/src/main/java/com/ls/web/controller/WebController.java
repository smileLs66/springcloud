package com.ls.web.controller;


import com.ls.web.feigns.UserFeignClient;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.ApiParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/web")
public class WebController {

    @Autowired
    private UserFeignClient userFeignClient;

    @GetMapping("/hello")
    @ApiOperation(value = "hello", tags = {"user"})
    //@HystrixCommand(fallbackMethod = "hiError")
    public String hello() {
        return     userFeignClient.getHello();
    }

    @PostMapping("/getName")
    @ApiOperation(value = "查询", tags = {"user"})
    public String getName(@ApiParam(value = "名称",required = true)@RequestParam String  name) {

        return userFeignClient.getName(name);
    }
    public String hiError() {
        return "hiError";
    }
}
