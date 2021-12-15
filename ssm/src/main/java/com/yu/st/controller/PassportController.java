package com.yu.st.controller;

import com.google.code.kaptcha.impl.DefaultKaptcha;
import com.yu.st.bean.User;
import com.yu.st.service.UserService;
import lombok.AllArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;

/**
 * @author :hhyygg2009
 * @date :Created in 2021/1/8 14:37
 */
@Controller
@AllArgsConstructor
@RequestMapping("/passport")
public class PassportController {

    @GetMapping(value = "/login")
    public String login() {
        return "passport/login";
    }


    @GetMapping(value = "/register")
    public String register() {
        return "passport/register";
    }


    @RequestMapping("/logout")
    public String logout(HttpSession session) {
        session.removeAttribute("user");
        return "redirect:/search";
    }

    @Autowired
    DefaultKaptcha defaultKaptcha;

    @RequestMapping("/code")
    public ResponseEntity<byte[]> code(HttpSession session) {
        try (ByteArrayOutputStream out = new ByteArrayOutputStream()) {
            String captcha = defaultKaptcha.createText();
            session.setAttribute("captcha", captcha);
            BufferedImage bimg = defaultKaptcha.createImage(captcha);
            ImageIO.write(bimg, "jpg", out);
            HttpHeaders headers = new HttpHeaders();

            headers.setContentType(MediaType.IMAGE_JPEG);


            return new ResponseEntity<>(out.toByteArray(), headers, HttpStatus.OK);

        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }


    @RequestMapping({"/profile"})
    public String profile(Model model, HttpSession session) {
        User user = UserService.getLoginUser(session);
        model.addAttribute("user", user);
        return "/passport/profile";
    }


}
