package com.ls.web.feigns.fallback;

import com.ls.web.feigns.UserFeignClient;
import org.springframework.stereotype.Component;

/**
 * @author ls
 * @date 2020/8/15 15:16
 */
@Component
public class UserFeignClientFallBack implements UserFeignClient {

  @Override
  public String getHello() {
    return "getHello-FallBack ";
  }

  @Override
  public String getName(String name) {
    return "getName-error"+name;
  }
}
