package com.xiruisi.controller;

import com.xiruisi.domain.User;
import com.xiruisi.service.RegisterService;
import com.zhenzi.sms.ZhenziSmsClient;
import org.apache.commons.lang3.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SuppressWarnings("all")
@Controller
@RequestMapping("/login")
@SessionAttributes(names = {"Username"})
public class LoginController {

    @Autowired
    private RegisterService registerService;

    @RequestMapping("/login")
    public @ResponseBody Map<String,String> login(@RequestParam(value = "username") String username,
                                                  @RequestParam(value = "password") String password,
                                                  Model model){
        Map<String,String> res = new HashMap<String, String>();
        //用户名存在？
        User user = registerService.findUserByUsername(username);
        if(user == null){
            res.put("type","error");
            res.put("msg","用户名不存在");
            return res;
        }
        if(!user.getPassword().equals(password)){
            res.put("type","error");
            res.put("msg","用户名或密码错误");
            return res;
        }
        //在session里存放用户名
        res.put("type","success");
        res.put("msg","登录成功");
        model.addAttribute("Username",user.getUsername());
        return res;
    }

    @RequestMapping("/logout")
    public String logout(SessionStatus sessionStatus){
        sessionStatus.setComplete();
        return "system/login";
    }

    @RequestMapping("/sendSms")
    public @ResponseBody Map<String,String> sendSms(@RequestBody String phoneNumber,
                                                    HttpServletRequest request,
                                                    Model model) throws Exception {
        Map<String,String> res = new HashMap<String, String>();
        //查询手机存在？
        User userByPhone = registerService.findUserByPhone(phoneNumber);
        if(userByPhone == null){
            res.put("type","error");
            res.put("msg","该手机号尚未注册");
            return res;
        }
        //生成随机验证码4位
        String captcha = RandomStringUtils.random(4,false,true);
        //发送到登录手机
        ZhenziSmsClient client = new ZhenziSmsClient("https://sms_developer.zhenzikj.com", "105554", "NGQ1YmFlM2YtYmQwMi00ZmZmLWJlMzMtYzdlOTFkN2UxM2U2");

        Map<String, Object> params = new HashMap<String, Object>();
        params.put("number", phoneNumber);
        params.put("templateId", "5565");
        String[] templateParams = new String[1];
        templateParams[0] = captcha;
        params.put("templateParams", templateParams);
        String result = client.send(params);
        System.out.println(result);
        //验证码存入session
        request.getSession().setAttribute("captcha",captcha);
        //username存入session
        model.addAttribute("Username",userByPhone.getUsername());
        //返回结果
        res.put("type","success");
        res.put("msg","发送成功");
        return res;
    }

    @RequestMapping("/testSms")
    public @ResponseBody Map<String,String> testSms(@RequestBody String captcha,HttpServletRequest request){
        Map<String,String> res = new HashMap<String, String>();
        String right = (String) request.getSession().getAttribute("captcha");
        if(right == null){
            res.put("type","error");
            res.put("msg","验证码已失效，请重新发送");
            return res;
        }
        if(right.equals(captcha)){
            res.put("type","success");
            res.put("msg","验证成功");
            request.getSession().removeAttribute("captcha");
            return res;
        }else{
            res.put("type","error");
            res.put("msg","验证码错误");
            return res;
        }
    }

    @RequestMapping("/userDelete")
    public @ResponseBody Map<String,String> userDelete(@RequestBody List<Integer> ids){
        Map<String,String> res = new HashMap<>();
        //删除
        registerService.deleteUser(ids);
        res.put("type","success");
        res.put("msg","添加成功");
        return res;
    }
}
