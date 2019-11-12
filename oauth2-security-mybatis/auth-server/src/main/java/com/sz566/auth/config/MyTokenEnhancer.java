package com.sz566.auth.config;


import com.sz566.auth.vo.CustomUserPrincipal;
import java.util.HashMap;
import java.util.Map;
import org.springframework.security.oauth2.common.DefaultOAuth2AccessToken;
import org.springframework.security.oauth2.common.OAuth2AccessToken;
import org.springframework.security.oauth2.provider.OAuth2Authentication;
import org.springframework.security.oauth2.provider.token.TokenEnhancer;

public class MyTokenEnhancer implements TokenEnhancer {
    @Override
    public OAuth2AccessToken enhance(OAuth2AccessToken accessToken, OAuth2Authentication authentication) {
        Map<String, Object> additionalInfo = new HashMap<>();
        CustomUserPrincipal user = (CustomUserPrincipal)authentication.getUserAuthentication().getPrincipal();
        additionalInfo.put("userId",user.getTbUser().getId());
        additionalInfo.put("userName",user.getUsername());
        additionalInfo.put("ip",user.getTbUser().getIp());
        ((DefaultOAuth2AccessToken) accessToken).setAdditionalInformation(additionalInfo);

        return accessToken;
    }
}
