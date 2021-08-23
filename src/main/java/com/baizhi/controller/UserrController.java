package com.baizhi.controller;

import com.baizhi.entity.Userr;
import com.baizhi.service.UserrService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("admin")
public class UserrController {

    private static Logger logger= LoggerFactory.getLogger(UserrController.class);

    @Autowired
    private UserrService userrService;

    @RequestMapping("login")
    @ResponseBody
    public Map login(String username,String password,String number,HttpServletRequest request){
        String code = (String) request.getSession().getAttribute("code");
        logger.info("验证码传过来的参数: {}",code);
        logger.info("接收到的参数: {} {} {}",username,password,number);
        Userr userr = userrService.query(username);
        Map<String,Object> map=new HashMap<String,Object>();
        logger.info("登录用户: {}",userr);
        if(code.equals(number)){
            if (userr!=null){
                if(password.equals(userr.getPassword())){
                    request.getSession().setAttribute("user", userr);
                    map.put("success", true);
                }else {
                    map.put("success", false);
                    map.put("msg", "密码错误");
                    logger.info("密码错误");
                }
            }else {
                map.put("success", false);
                map.put("msg", "用户名为空");
            }
        }else{
            map.put("success", false);
            map.put("msg", "验证码错误");
        }
        return map;
    }
}
