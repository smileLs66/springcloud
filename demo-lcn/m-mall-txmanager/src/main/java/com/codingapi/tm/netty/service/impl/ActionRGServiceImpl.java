package com.codingapi.tm.netty.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.codingapi.tm.manager.service.TxManagerService;
import com.codingapi.tm.netty.service.IActionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 强制回滚事务组
 *  Created by liuliang on 2018/10/9.
 */
@Service(value = "rg")
public class ActionRGServiceImpl implements IActionService{


    @Autowired
    private TxManagerService txManagerService;

    @Override
    public String execute(String channelAddress, String key, JSONObject params ) {
        String res = "";
        String groupId = params.getString("g");
        boolean bs = txManagerService.rollbackTransactionGroup(groupId);
        res = bs ? "1" : "0";
        return res;
    }
}
