package com.yu.st.entity;

import java.io.Serializable;
import java.util.Date;
import lombok.Data;

/**
 * user
 * @author 
 */
@Data
public class User implements Serializable {
    private Integer id;

    private String username;

    private String password;

    /**
     * 是否管理员
     */
    private Integer flag;

    private String phone;

    /**
     * 注册时间
     */
    private Date regtime;

    /**
     * 头像
     */
    private String avatar;

    /**
     * 性别
     */
    private Integer sex;

    private static final long serialVersionUID = 1L;
}