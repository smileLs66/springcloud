package com.sz566.auth.service;


import com.sz566.auth.pojo.TbPermission;
import com.sz566.auth.pojo.TbUser;
import com.sz566.auth.vo.CustomUserPrincipal;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

/**
 * Created by ls on 2019/6/16.
 */

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private TbPermissionService tbPermissionService;
    @Autowired
    private TbUserService tbUserService;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        TbUser tbUser = tbUserService.queryTbUserByUserName(username);
        List<GrantedAuthority> grantedAuthorities = new ArrayList();
        if (StringUtils.isEmpty(tbUser)) {
            throw new UsernameNotFoundException("很抱歉，找不到用户名为" + username + "的用户！");
        }

        if (tbUser != null) {
            List<TbPermission> tbPermissions = tbPermissionService
                .queryPermissionByUserId(tbUser.getId());
            tbPermissions.forEach(tbPermission -> {
                if (tbPermission != null && tbPermission.getEnname() != null) {
                    GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(tbPermission.getEnname());
                    grantedAuthorities.add(grantedAuthority);
                }
            });
        }
        /**
         * 若只是认证，要去掉grantedAuthorities换成 Collections.emptyList()
         * 若是要授权，要加上
         */
        CustomUserPrincipal userDetail = new CustomUserPrincipal(tbUser.getUsername(), tbUser.getPassword(), grantedAuthorities);
        userDetail.setTbUser(tbUser);
        return userDetail;
    }
}

