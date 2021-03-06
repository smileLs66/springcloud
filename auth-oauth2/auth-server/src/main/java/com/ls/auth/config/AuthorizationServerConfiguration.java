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

    //???????????????Redis*/
    @Bean
    public TokenStore tokenStore() {
        RedisTokenStore redisToken = new RedisTokenStore(redisConnectionFactory);
        return redisToken;
    }
    /* @Bean
       public TokenStore tokenStore() {
           // ?????? JDBC ?????????????????????????????????
           return new JdbcTokenStore(dataSource);
       }*/
/*    @Bean
    public ClientDetailsService jdbcClientDetails() {
        // ?????? JDBC ??????????????????????????????????????????????????????
        return new JdbcClientDetailsService(dataSource);
    }*/

    //MD5????????????

    /**
     * ????????????????????????????????????????????????????????????????????? Token???????????????, ???????????????token?????????token??????
     */
    @Override
    public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
        // ?????????token?????????????????????????????????????????????
        TokenEnhancerChain tokenEnhancerChain = new TokenEnhancerChain();
        tokenEnhancerChain.setTokenEnhancers(Arrays.asList(new MyTokenEnhancer()));
        //????????????authenticationManager ???????????????password grants
        // ????????????
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
     * ????????????token
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
        //TODO??????????????????????????????????????????????????????????????????????????????
        // clients.withClientDetails(jdbcClientDetails());

        clients.inMemory()
            //client_id  ??????
            .withClient("client")
            .secret(passwordEncoder.encode("secret"))
            //?????????????????????????????????????????????????????????
            .scopes("all")
            //???client?????????????????????,????????????
            .authorizedGrantTypes("implicit", "password", "refresh_token", "authorization_code")
            //.resourceIds("ls_web")
            //????????????
            .redirectUris("https://blog.csdn.net/qq_40198004")
            .autoApprove(true);
    }

    @Override
    public void configure(AuthorizationServerSecurityConfigurer oauthServer) throws Exception {

        //??????????????????
        oauthServer.allowFormAuthenticationForClients();

        //?????? check_token ??????
        oauthServer.checkTokenAccess("permitAll()");
    }


}
