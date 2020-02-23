package com.ls.auth.pojo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Date;
import lombok.Data;

@TableName("tb_permission")
@Data
public class TbPermission implements Serializable {
    @TableId(type=IdType.AUTO)
    private Long id;

    private Long parentId;

    private String name;

    private String enname;

    private String url;

    private String description;

    private Date created;

    private Date updated;

}