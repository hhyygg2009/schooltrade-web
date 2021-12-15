package com.yu.st.service;

import com.yu.st.bean.Comment;
import com.yu.st.bean.vo.Message;

import javax.servlet.http.HttpSession;

/**
 * @author hhyygg2009
 * @date Created in 2021/9/13 20:49
 */
public interface CommentService {
    Message createComment(Comment comment, HttpSession session);

    Message delComment(Integer commentId, HttpSession session);
}
