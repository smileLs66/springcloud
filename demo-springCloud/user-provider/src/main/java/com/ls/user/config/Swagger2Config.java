package com.ls.user.config;

import io.swagger.annotations.ApiOperation;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

@Configuration
@EnableSwagger2
public class Swagger2Config {

  @Bean
  public Docket createRestApi() {
    return new Docket(DocumentationType.SWAGGER_2)
        .enable(true)
        .apiInfo(apiInfo())
        .select() //返回ApiSelectorBuilder
        .apis(RequestHandlerSelectors.withMethodAnnotation(ApiOperation.class))
        .paths(PathSelectors.any()) //只给product路径产生API文档
        .build();
  }

  //文档基础信息
  private ApiInfo apiInfo() {
    return new ApiInfoBuilder()
        // 文档标题
        .title("swagger")
        // 文档描述
        .description("user接口文档")
        .termsOfServiceUrl("http://localhost:9091")
        .version("v1.0")
        .build();
  }


}
