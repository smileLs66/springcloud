package com.sz566.resource;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;


@SpringBootApplication
@MapperScan("com.ls.mapper")
public class ResourceServerApplication {

  public static void main(String[] args) {
    SpringApplication.run(ResourceServerApplication.class, args);
  }

}
