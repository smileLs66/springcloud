package com.ls.auth.service.impl;


import com.ls.auth.mapper.TbPermissionMapper;
import com.ls.auth.pojo.TbPermission;
import com.ls.auth.service.TbPermissionService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by ls on 2019/6/16.
 */
@Service
public class TbPermissionServiceImpl implements TbPermissionService {
  @Autowired
  private TbPermissionMapper permissionMapper;

  @Override
  public List<TbPermission> queryPermissionByUserId(Long userId) {
    List<TbPermission> tbPermissions = permissionMapper.selectByUserId(userId);
    return tbPermissions;
  }
}
