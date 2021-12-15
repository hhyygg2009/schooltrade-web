package com.yu.st.service;

import javax.servlet.http.HttpSession;
import java.util.HashSet;

/**
 * @author hhyygg2009
 * @date Created in 2021/9/13 20:48
 */
public interface ItemService {
    HashSet<Integer> itemSessionInit(HttpSession session);

    boolean saveItemHistory(Integer id, HttpSession session);
}
