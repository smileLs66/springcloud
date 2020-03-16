package com.ls.feign;

import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * @Author: ls
 * @Date: 2020/3/15 19:36
 */
@FeignClient(value="pay")
public interface PayFeign {

  @GetMapping("/savePay")
  Boolean savePay();

}
