package com.ls.auth.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@TableName("tb_user")
@Data
public class TbUser implements Serializable {

    @TableId(type = IdType.AUTO)
    private Long id;

    private String username;

    private String password;
    private Integer state;
    private String phone;
    private String ip;
    private String email;

    private Date createTime;

    private Date modifyTime;

}