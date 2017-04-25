package com.jiaos.controller;

import com.jiaos.common.HttpRequestUtil;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletRequest;

/**
 * @（#）:GetMenusController.java
 * @description:
 * @author: jiaosen 2017/4/25
 * @version: Version 1.0
 */
@Controller
@RequestMapping(value = "/getMenus")
public class GetMenusController {

    @RequestMapping(method = RequestMethod.POST)
    public void getMenus(ServletRequest request){
        String fName = HttpRequestUtil.getString(request,"fname");
        String lName = HttpRequestUtil.getString(request,"lname");

    }
}
