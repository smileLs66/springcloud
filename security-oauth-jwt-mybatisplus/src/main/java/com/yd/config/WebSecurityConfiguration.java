package com.yd.config;


import com.yd.service.UserDetailsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * Created by ls on 2019/6/16.
 * 服务器安全配置
 */

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true, securedEnabled = true, jsr250Enabled = true)//全局方法拦截
public class WebSecurityConfiguration extends WebSecurityConfigurerAdapter {


  @Autowired
  private UserDetailsServiceImpl userDetailsService;

  @Override
  protected void configure(AuthenticationManagerBuilder auth) throws Exception {
    auth.userDetailsService(userDetailsService).passwordEncoder(passwordEncoder());
  }

/*  @Override
  public void configure(WebSecurity web) throws Exception {
    web.ignoring().antMatchers("/assets/**", "/css/**", "/images/**");
  }

  @Override
  protected void configure(HttpSecurity http) throws Exception {
    http.formLogin()
        .loginPage("/login")
        .and()
        .authorizeRequests()
        .antMatchers("/login").permitAll()
        .anyRequest()
        .authenticated()
        .and().csrf().disable().cors();
  }*/
  @Override
  public void configure(WebSecurity web) throws Exception {
    // 将 check_token 暴露出去，否则资源服务器访问时报 403 错误
    web.ignoring().antMatchers("/oauth/check_token");
  }

  @Bean
  public PasswordEncoder passwordEncoder() {
    return new BCryptPasswordEncoder();
  }

}

