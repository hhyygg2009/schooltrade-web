package com.yu.st.controller;

import com.yu.st.entity.User;
import com.yu.st.service.IUserService;
import com.yu.st.service.impl.UserServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;



@Controller
@RequestMapping("/passport")
public class UserController {

    @Autowired
    private IUserService userService;

    @RequestMapping("/login")
    public ModelAndView login() throws Exception{
        ModelAndView mv = new ModelAndView();

        User user= userService.selectUser(1);
        mv.addObject("user",user);
        mv.setViewName("login");
        return mv;
    }
}
