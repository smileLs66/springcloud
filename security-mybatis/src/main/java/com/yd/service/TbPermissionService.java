package com.yd.service;


import com.yd.pojo.TbPermission;
import java.util.List;

/**
 * Created by ls on 2019/6/16.
 */
public interface TbPermissionService {
  List<TbPermission> queryPermissionByUserId(Long userId);

}
