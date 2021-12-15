package com.yu.st.service.impl;

import com.yu.st.bean.Comment;
import com.yu.st.bean.User;
import com.yu.st.bean.vo.Message;
import com.yu.st.dao.CommentDao;
import com.yu.st.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

/**
 * @author hhyygg2009
 * @date Created in 2021/5/30 17:06
 */
@Service
@AllArgsConstructor
public class CommentServiceImpl implements com.yu.st.service.CommentService {

    CommentDao commentDao;

    @Override
    public Message createComment(Comment comment, HttpSession session) {
        User user = UserService.getLoginUser(session);

        if (user != null) {
            comment.setFromUid(user.getId());
            commentDao.insertSelective(comment);
            return Message.success();
        } else {
            return Message
                    .error()
                    .setMsg(UserServiceImpl.MSG[UserServiceImpl.USER_NOT_FOUND]);
        }
    }

    @Override
    public Message delComment(Integer commentId, HttpSession session) {
        User user = UserService.getLoginUser(session);
        if (user != null) {
            Comment comment = commentDao.selectByPrimaryKey(commentId);
            if (comment.getFromUid().equals(user.getId())) {
                commentDao.deleteByPrimaryKey(commentId);
                return Message.success();
            }
        }
        return Message
                .error()
                .setMsg(UserServiceImpl.MSG[UserServiceImpl.USER_NOT_FOUND]);

    }
}
