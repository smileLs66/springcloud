package com.codingapi.tm.netty.service;

import com.alibaba.fastjson.JSONObject;

/**
 *  Created by liuliang on 2018/10/9.
 */
public interface IActionService {


    String execute(String channelAddress,String key,JSONObject params);

}
