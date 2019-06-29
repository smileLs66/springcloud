package com.yd.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.yd.pojo.TbUser;

public interface TbUserMapper extends BaseMapper<TbUser>{
    int deleteByPrimaryKey(Long id);

    int insert(TbUser record);

    int insertSelective(TbUser record);

    TbUser selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(TbUser record);

    int updateByPrimaryKey(TbUser record);

    TbUser selectUserName(String userName);
}