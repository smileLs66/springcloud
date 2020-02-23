package com.ls.resources;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.ls.resources.mapper")
public class ResourcesServerApplication {

  public static void main(String[] args) {
    SpringApplication.run(ResourcesServerApplication.class, args);
  }

}
