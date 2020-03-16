package com.ls.auth.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ls.auth.pojo.TbPermission;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbPermissionMapper extends BaseMapper<TbPermission> {


    List<TbPermission> selectByUserId(@Param("userId") Long userId);
}