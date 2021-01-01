package com.yu.st.service.impl;

import com.yu.st.dao.UserDao;
import com.yu.st.entity.User;
import com.yu.st.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements IUserService {
    @Resource
    private UserDao userDao;

    public User selectUser(int userId) {
        return userDao.selectByPrimaryKey(userId);
    }
}
