package com.ls.web.feigns;

import com.ls.web.feigns.fallback.UserFeignClientFallBack;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by v_lsslli on 2020/5/11.
 */

@FeignClient(value = "user-service", url = "http://127.0.0.1:9091", fallback = UserFeignClientFallBack.class)
//@RequestMapping(value = "/user")  ，要用服务降级就不要在类上设置RequestMapping了。
public interface UserFeignClient {


  @GetMapping("/user/getHello")
  String getHello();

  @PostMapping("/user/getName")
  String getName(@RequestParam String name);

}
