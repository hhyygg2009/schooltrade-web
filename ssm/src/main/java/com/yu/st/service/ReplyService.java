package com.yu.st.service;

import com.yu.st.bean.Reply;
import com.yu.st.bean.vo.Message;

import javax.servlet.http.HttpSession;

/**
 * @author hhyygg2009
 * @date Created in 2021/9/13 20:49
 */
public interface ReplyService {
    Message createReply(Reply reply, HttpSession session);
}
