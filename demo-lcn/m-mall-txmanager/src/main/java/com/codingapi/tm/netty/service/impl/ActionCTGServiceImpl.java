package com.codingapi.tm.netty.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.codingapi.tm.manager.service.TxManagerService;
import com.codingapi.tm.netty.service.IActionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 关闭事务组
 *  Created by liuliang on 2018/10/9.
 */
@Service(value = "ctg")
public class ActionCTGServiceImpl implements IActionService{


    @Autowired
    private TxManagerService txManagerService;

    @Override
    public String execute(String channelAddress, String key, JSONObject params ) {
        String groupId = params.getString("g");
        int state = params.getInteger("s");
        String res = String.valueOf(txManagerService.closeTransactionGroup(groupId,state));
        return res;
    }
}
