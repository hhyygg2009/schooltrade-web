package com.yu.st.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * category
 * @author 
 */
@Data
public class Category implements Serializable {
    private Integer id;

    /**
     * 分类名
     */
    private String name;

    private static final long serialVersionUID = 1L;
}