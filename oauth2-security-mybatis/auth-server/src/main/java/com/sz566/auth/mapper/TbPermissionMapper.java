package com.sz566.auth.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.sz566.auth.pojo.TbPermission;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbPermissionMapper extends BaseMapper<TbPermission> {


    List<TbPermission> selectByUserId(@Param("userId") Long userId);
}