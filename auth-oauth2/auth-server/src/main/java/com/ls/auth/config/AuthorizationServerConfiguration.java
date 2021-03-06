package com.ls.auth.config;


import com.ls.auth.exception.CustomOauthException;
import com.ls.auth.service.UserDetailsServiceImpl;
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
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.oauth2.common.exceptions.OAuth2Exception;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableAuthorizationServer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.ClientDetailsService;
import org.springframework.security.oauth2.provider.client.JdbcClientDetailsService;
import org.springframework.security.oauth2.provider.token.AuthorizationServerTokenServices;
import org.springframework.security.oauth2.provider.token.DefaultTokenServices;
import org.springframework.security.oauth2.provider.token.TokenEnhancerChain;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.redis.RedisTokenStore;

/**
 * Created by ls on 2020/2/26 8:12
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
    @Autowired
    private PasswordEncoder passwordEncoder;

    //令牌保存到Redis*/
    @Bean
    public TokenStore tokenStore() {
        RedisTokenStore redisToken = new RedisTokenStore(redisConnectionFactory);
        return redisToken;
    }
    /* @Bean
       public TokenStore tokenStore() {
           // 基于 JDBC 实现，令牌保存到数据库
           return new JdbcTokenStore(dataSource);
       }*/
/*    @Bean
    public ClientDetailsService jdbcClientDetails() {
        // 基于 JDBC 实现，需要事先在数据库配置客户端信息
        return new JdbcClientDetailsService(dataSource);
    }*/

    //MD5盐值加密

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
        //TODO：可改为从数据库中维护客户端接入信息，以便第三方接入
        // clients.withClientDetails(jdbcClientDetails());

        clients.inMemory()
            //client_id  必填
            .withClient("client")
            .secret(passwordEncoder.encode("secret"))
            //允许的授权范围，如果为空，则不限制范围
            .scopes("all")
            //该client允许的授权类型,默认为空
            .authorizedGrantTypes("implicit", "password", "refresh_token", "authorization_code")
            //.resourceIds("ls_web")
            //会掉地址
            .redirectUris("https://blog.csdn.net/qq_40198004")
            .autoApprove(true);
    }

    @Override
    public void configure(AuthorizationServerSecurityConfigurer oauthServer) throws Exception {

        //允许表单认证
        oauthServer.allowFormAuthenticationForClients();

        //允许 check_token 访问
        oauthServer.checkTokenAccess("permitAll()");
    }


}
