package com.ls;

import org.springframework.boot.SpringApplication;
import org.springframework.cloud.client.SpringCloudApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.feign.EnableFeignClients;

/**
 * @SpringCloudApplication 包含 @EnableDiscoveryClient和@EnableCircuitBreaker
 */
@SpringCloudApplication //开启hystrix
@EnableEurekaClient
@EnableFeignClients("com.ls.feign")  //启用feign客户端
public class ComsumerUserApplication {

    public static void main(String[] args) {
        SpringApplication.run(ComsumerUserApplication.class, args);
    }

}

