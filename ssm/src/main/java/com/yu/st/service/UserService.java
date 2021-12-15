package com.yu.st.service;

import com.yu.st.bean.User;
import com.yu.st.bean.po.UserForm;
import com.yu.st.bean.vo.Message;
import com.yu.st.service.impl.UserServiceImpl;

import javax.servlet.http.HttpSession;

/**
 * @author hhyygg2009
 * @date Created in 2021/9/13 20:50
 */
public interface UserService {
    static User getLoginUser(HttpSession session) {
        return (User) session.getAttribute(UserServiceImpl.USER_SESSION_ATTR);
    }

    static boolean checkUser(User user, HttpSession session) {
        return user.getId().equals(getLoginUser(session).getId());
    }

    int registerAction(UserForm userForm, HttpSession session);

    Message loginAction(UserForm userForm, HttpSession session);

    Message updateAction(User user, HttpSession session);

    boolean captchaCheck(HttpSession session, String captchaIn);
}
