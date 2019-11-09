package com.ls.config;


import com.ls.service.UserDetailsServiceImpl;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 * Created by ls on 2019/6/16.
 * 服务器安全配置
 */

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true, securedEnabled = true, jsr250Enabled = true)//全局方法拦截
public class WebSecurityConfiguration extends WebSecurityConfigurerAdapter {


  @Bean
  public BCryptPasswordEncoder passwordEncoder() {
    // 设置默认的加密方式
    return new BCryptPasswordEncoder();
  }

  @Bean
  @Override
  public UserDetailsService userDetailsService() {
    return new UserDetailsServiceImpl();
  }

  @Override
  protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    // 使用自定义认证与授权
    auth.userDetailsService(userDetailsService());
  }

  @Override
  public void configure(WebSecurity web) throws Exception {
    // 将 check_token 暴露出去，否则资源服务器访问时报 403 错误
    web.ignoring().antMatchers("/oauth/check_token");
  }

}

