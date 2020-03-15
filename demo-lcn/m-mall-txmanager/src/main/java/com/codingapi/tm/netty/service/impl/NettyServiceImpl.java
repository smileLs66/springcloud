package com.codingapi.tm.netty.service.impl;

import com.codingapi.tm.netty.service.IActionService;
import com.codingapi.tm.netty.service.NettyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Service;

/**
 *  Created by liuliang on 2018/10/9.c
 */
@Service
public class NettyServiceImpl implements NettyService{

    @Autowired
    private ApplicationContext spring;

    @Override
    public IActionService getActionService(String action) {
        return spring.getBean(action,IActionService.class);
    }
}
