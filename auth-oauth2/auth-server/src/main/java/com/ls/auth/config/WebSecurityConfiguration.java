package com.ls.auth.config;


import com.ls.auth.service.UserDetailsServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

/**
 * Created by ls on 2019/6/16. 服务器安全配置
 */

@Configuration
@EnableWebSecurity  //启用spring mvc的安全性
@EnableGlobalMethodSecurity(prePostEnabled = true, securedEnabled = true, jsr250Enabled = true)//全局方法拦截
public class WebSecurityConfiguration extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserDetailsServiceImpl userDetailsService;

    @Bean
    public PasswordEncoder passwordEncoder() {
        // 设置默认的加密方式
        return new BCryptPasswordEncoder();
    }

   @Bean
    public DaoAuthenticationProvider authProvider() {
        final DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(userDetailsService);
        authProvider.setPasswordEncoder( passwordEncoder());
        return authProvider;
    }

    /**
     * ，configure()方法中的AuthenticationManagerBuilder
     * 使用构造者风格的接口来构建认证配置。通过简单地调用in-
     * MemoryAuthentication()就能启用内存用户存储
     * 通过重载，配置user-detail服务
     * @param auth
     * @throws Exception
     */
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        // 使用自定义认证与授权
        auth
            .authenticationProvider(authProvider())
            .userDetailsService(userDetailsService())
            .passwordEncoder( passwordEncoder());
    }

    /**
     * 通过重载，配置Spring Security的Filter链
     * @param web
     * @throws Exception
     */
    @Override
    public void configure(WebSecurity web) throws Exception {
        // 将 check_token 暴露出去，否则资源服务器访问时报 403 错误
        web.ignoring().antMatchers("/oauth/check_token");
    }


    @Bean
    @Override
    public AuthenticationManager authenticationManagerBean() throws Exception {
        return super.authenticationManagerBean();
    }
    /**
     * 通过重载，配置如何通过拦截器保护请求
     * 通过HttpSecurity实现Security的自定义过滤配置
     * @param http
     * @throws Exception
     */
    @Override
    public void configure(HttpSecurity http) throws Exception {

        http.csrf().disable();
        http
            .requestMatchers().antMatchers("/oauth/**","/login/**","/logout/**")
            .and()
            .authorizeRequests()
            .antMatchers("/oauth/**").authenticated()
            .and()
            .formLogin().permitAll(); //新增login form支持用户登录及授权
    }
}

