package com.yu.st.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import com.yu.st.util.MD5;
import lombok.AccessLevel;
import lombok.Data;
import lombok.Setter;

/**
 * user
 * @author 
 */
@Data
public class User implements Serializable {

    private List<Item> items;
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