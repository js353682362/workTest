package com.jiaos.controller;

import com.jiaos.common.HttpRequestUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletRequest;

/**
 * @（#）:RedirectController.java
 * @description:
 * @author: jiaosen 2017/4/20
 * @version: Version 1.0
 */
@Controller
@RequestMapping({"/common"})
public class RedirectController {

    @RequestMapping(value = "/toPage",method = RequestMethod.GET)
    public String toPage(ServletRequest request){
        return HttpRequestUtil.getValue(request,"toPage");
    }

}
