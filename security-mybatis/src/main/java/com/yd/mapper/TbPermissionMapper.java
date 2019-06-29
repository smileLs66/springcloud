package com.yd.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.yd.pojo.TbPermission;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbPermissionMapper extends BaseMapper<TbPermission> {
    int deleteByPrimaryKey(Long id);

    int insert(TbPermission record);

    int insertSelective(TbPermission record);

    TbPermission selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TbPermission record);

    int updateByPrimaryKey(TbPermission record);

    List<TbPermission> selectByUserId(@Param("userId") Long userId);
}