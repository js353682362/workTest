package com.jiaos.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * @（#）:BaseFunctionService.java
 * @description:
 * @author: jiaosen 2017/4/25
 * @version: Version 1.0
 */
public class BaseFunctionService {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;
}
