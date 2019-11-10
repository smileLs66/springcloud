package com.ls.config;


import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.provider.ClientDetailsService;
import org.springframework.security.oauth2.provider.client.JdbcClientDetailsService;
import org.springframework.security.oauth2.provider.token.AuthorizationServerTokenServices;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.JdbcTokenStore;

/**
 * Created by ls on 2019/6/16.
 */

@Configuration
@EnableAuthorizationServer
public class AuthorizationServerConfiguration extends AuthorizationServerConfigurerAdapter {


 @Autowired
 private DataSource dataSource;

  @Bean
  public TokenStore tokenStore() {
    // 基于 JDBC 实现，令牌保存到数据
    return new JdbcTokenStore(dataSource);
  }

  @Bean
  public ClientDetailsService jdbcClientDetails() {
    // 基于 JDBC 实现，需要事先在数据库配置客户端信息
    return new JdbcClientDetailsService(dataSource);
  }

  @Override
  public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
    // 设置令牌
    endpoints.tokenStore(tokenStore());
  }

  /**
   * 支持刷新token
   * @return DefaultTokenServices
   */
  @Primary
  @Bean
  public AuthorizationServerTokenServices tokenServices() {
    DefaultTokenServices defaultTokenServices = new DefaultTokenServices();
    defaultTokenServices.setAccessTokenValiditySeconds(60000);
    defaultTokenServices.setRefreshTokenValiditySeconds(604800);
    defaultTokenServices.setSupportRefreshToken(true);
    defaultTokenServices.setReuseRefreshToken(false);
    defaultTokenServices.setTokenStore(tokenStore());
    return defaultTokenServices;
  }

  @Override
  public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
    // 读取客户端配置
    clients.withClientDetails(jdbcClientDetails());
  }
}

