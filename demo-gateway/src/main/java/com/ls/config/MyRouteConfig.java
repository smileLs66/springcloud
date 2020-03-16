package com.ls.config;

import org.springframework.cloud.gateway.route.RouteLocator;
import org.springframework.cloud.gateway.route.builder.RouteLocatorBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Created by ls on 2019/6/29.
 * 实现路由转发百度
 */
@Configuration
public class MyRouteConfig {
  @Bean
  public RouteLocator customRouteLocator(RouteLocatorBuilder builder) {
    String httpUri = "http://www.baidu.com";
    return builder.routes()
        // basic proxy
        .route(r -> r.path("/**")
            .uri(httpUri))
        .build();
  }

}
