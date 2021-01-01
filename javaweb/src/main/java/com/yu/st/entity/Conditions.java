package com.yu.st.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * conditions
 * @author 
 */
@Data
public class Conditions implements Serializable {
    private Integer id;

    /**
     * 新旧程度
     */
    private String name;

    private static final long serialVersionUID = 1L;
}