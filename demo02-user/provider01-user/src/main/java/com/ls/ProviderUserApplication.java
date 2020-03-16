package com.ls;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;


@SpringBootApplication
//这里是扫描dao接口的包用于识别mybatis
@MapperScan(basePackages="com.ls.mapper")
@EnableEurekaClient  //注册到Eureka注册中心上
public class ProviderUserApplication {

	public static void main(String[] args) {
		SpringApplication.run(ProviderUserApplication.class, args);
	}

}

