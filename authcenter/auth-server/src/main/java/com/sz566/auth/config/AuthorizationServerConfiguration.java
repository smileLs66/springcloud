package com.sz566.auth.config;


import com.sz566.auth.exception.CustomOauthException;
import com.sz566.auth.service.UserDetailsServiceImpl;
import java.util.Arrays;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.data.redis.connection.RedisConnectionFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.oauth2.common.exceptions.OAuth2Exception;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.ClientDetailsService;
import org.springframework.security.oauth2.provider.client.ClientCredentialsTokenEndpointFilter;
import org.springframework.security.oauth2.provider.client.JdbcClientDetailsService;
import org.springframework.security.oauth2.provider.error.OAuth2AuthenticationEntryPoint;
import org.springframework.security.oauth2.provider.token.AuthorizationServerTokenServices;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;
import org.springframework.security.oauth2.provider.token.TokenEnhancerChain;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.redis.RedisTokenStore;
import org.springframework.security.web.authentication.www.BasicAuthenticationFilter;

/**
 * Created by ls on 2019/6/16.
 */

@Configuration
@EnableAuthorizationServer
public class AuthorizationServerConfiguration extends AuthorizationServerConfigurerAdapter {

    @Autowired
    private UserDetailsServiceImpl userDetailsService;
    @Autowired
    private DataSource dataSource;
    @Autowired
    private AuthenticationManager authenticationManager;
    @Autowired
    private RedisConnectionFactory redisConnectionFactory;

   /* @Bean
      public TokenStore tokenStore() {
          // 基于 JDBC 实现，令牌保存到数据库
          return new JdbcTokenStore(dataSource);
      }*/
    //令牌保存到Redis*/
    @Bean
    public TokenStore tokenStore() {
        RedisTokenStore redisToken = new RedisTokenStore(redisConnectionFactory);
        return redisToken;
    }
    @Bean
    public ClientDetailsService jdbcClientDetails() {
        // 基于 JDBC 实现，需要事先在数据库配置客户端信息
        return new JdbcClientDetailsService(dataSource);
    }

    /**
     * 在此处定义认证管理，即系统或者集群中的用户以及 Token的存儲方式, 定义授权、token终端、token服务
     */
    @Override
    public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
        // 自定义token生成方式，增加用户登录名等信息
        TokenEnhancerChain tokenEnhancerChain = new TokenEnhancerChain();
        tokenEnhancerChain.setTokenEnhancers(Arrays.asList(new MyTokenEnhancer()));
        //通过注入authenticationManager 会自动开启password grants
        // 设置令牌
        endpoints
            .authenticationManager(authenticationManager)
            .tokenStore(tokenStore()).tokenEnhancer(tokenEnhancerChain)
            .userDetailsService(userDetailsService)
            .exceptionTranslator(e -> {
                if (e instanceof OAuth2Exception) {
                    OAuth2Exception oAuth2Exception = (OAuth2Exception) e;
                    return ResponseEntity
                        .status(HttpStatus.UNAUTHORIZED)
                        .body(new CustomOauthException(oAuth2Exception.getMessage()));
                } else {
                    throw e;
                }
            });
    }

    /**
     * 支持刷新token
     *
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
    @Override
    public void configure(AuthorizationServerSecurityConfigurer oauthServer) throws Exception {

        //允许表单认证
        oauthServer.allowFormAuthenticationForClients();

        //允许 check_token 访问
        oauthServer.checkTokenAccess("permitAll()");
    }



}
