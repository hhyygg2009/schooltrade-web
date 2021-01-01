package com.yu.st.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * state
 * @author 
 */
@Data
public class State implements Serializable {
    private Integer id;

    /**
     * 是否上架
     */
    private String name;

    private static final long serialVersionUID = 1L;
}