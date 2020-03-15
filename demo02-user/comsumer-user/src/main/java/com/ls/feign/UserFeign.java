package com.ls.feign;

import com.ls.pojo.User;
import org.springframework.cloud.netflix.feign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;



import java.util.List;

@FeignClient("yd-user")	//指向访问的提供者

public interface UserFeign {
    @GetMapping("/user/find")
     List<User> find();


}

