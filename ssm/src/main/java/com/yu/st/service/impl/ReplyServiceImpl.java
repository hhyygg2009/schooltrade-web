package com.yu.st.service.impl;

import com.yu.st.bean.Reply;
import com.yu.st.bean.User;
import com.yu.st.bean.vo.Message;
import com.yu.st.dao.CommentDao;
import com.yu.st.dao.ReplyDao;
import com.yu.st.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpSession;

/**
 * @author hhyygg2009
 * @date Created in 2021/5/30 17:21
 */
@Service
@AllArgsConstructor
public class ReplyServiceImpl implements com.yu.st.service.ReplyService {
    ReplyDao replyDao;
    CommentDao commentDao;
    UserServiceImpl userService;

    @Override
    public Message createReply(Reply reply, HttpSession session) {
        User user = UserService.getLoginUser(session);
        int toUid;
        if (user != null) {
            int replyType;
            if (reply.getReplyId() != null) {
                toUid = replyDao.selectByPrimaryKey(reply.getReplyId()).getFromUid();
                replyType = 1;
            } else {
                toUid = commentDao.selectByPrimaryKey(reply.getCommentId()).getFromUid();
                reply.setReplyId(reply.getCommentId());
                replyType = 0;
            }
            reply.setReplyType(replyType);

            reply.setFromUid(user.getId());
            reply.setToUid(toUid);

            int result = replyDao.insertSelective(reply);
            if (result > 0) {
                return Message.success();
            }


        }
        return Message
                .error()
                .setMsg(UserServiceImpl.MSG[UserServiceImpl.USER_NOT_FOUND]);


    }
}
