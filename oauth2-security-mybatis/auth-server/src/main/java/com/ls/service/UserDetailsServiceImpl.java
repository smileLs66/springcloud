package com.ls.service;


import com.ls.pojo.TbPermission;
import com.ls.pojo.TbUser;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
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
    if(tbUser!=null){
      List<TbPermission> tbPermissions = tbPermissionService
          .queryPermissionByUserId(tbUser.getId());
      tbPermissions.forEach(tbPermission -> {
        if (tbPermission != null && tbPermission.getEnname() != null) {
          GrantedAuthority grantedAuthority = new SimpleGrantedAuthority(tbPermission.getEnname());
          grantedAuthorities.add(grantedAuthority);
        }
      });
    }
    return new User(tbUser.getUsername(), tbUser.getPassword(), grantedAuthorities);
  }
}

