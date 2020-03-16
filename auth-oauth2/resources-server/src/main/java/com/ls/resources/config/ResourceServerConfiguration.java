package com.ls.resources.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.redis.RedisTokenStore;

/**
 * @Author: ls
 * @Date: 2019/11/9 15:57
 */
@Configuration
@EnableResourceServer
@EnableGlobalMethodSecurity(prePostEnabled = true, securedEnabled = true, jsr250Enabled = true)
public class ResourceServerConfiguration extends ResourceServerConfigurerAdapter {


    @Autowired
    private RedisConnectionFactory redisConnectionFactory;


    /*@Autowired
    private DataSource dataSource;
     @Bean
      public TokenStore tokenStore() {
        return new JdbcTokenStore(dataSource);
      }*/
    //
    @Bean
    public TokenStore tokenStore() {
        return new RedisTokenStore(redisConnectionFactory);
    }

    @Override
    public void configure(ResourceServerSecurityConfigurer resources) throws Exception {
        //resourceId 推荐每个 受保护的资源都提供一下 ，可以供 auth服务对资源进行一个认证
        resources.resourceId("ls_resource").tokenStore(tokenStore());
    }

    @Override
    public void configure(HttpSecurity http) throws Exception {
        http
            .exceptionHandling()
            .and()
            .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
            .and()
            .authorizeRequests()
            // 以下为配置所需保护的资源路径及权限，需要与认证服务器配置的授权部分对应
            .antMatchers("/contents").hasAuthority("SystemContent")
            .antMatchers("/view/**").hasAuthority("SystemContentView")
            .antMatchers("/insert/**").hasAuthority("SystemContentInsert")
            .antMatchers("/update/**").hasAuthority("SystemContentUpdate")
            .antMatchers("/delete/**").hasAuthority("SystemContentDelete");
    }
}

