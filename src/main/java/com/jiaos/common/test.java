package com.jiaos.common;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * @（#）:test.java
 * @description:
 * @author: jiaosen 2017/4/20
 * @version: Version 1.0
 */
public class test {
    public static void main(String[] args) {
        String checkValue = "2007-02-29";
        String checkVale2 = "20070203";
        String eL= "^((\\d{2}(([02468][048])|([13579][26]))[\\-\\/\\s]?((((0?[13578])|(1[02]))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])))))|(\\d{2}(([02468][1235679])|([13579][01345789]))[\\-\\/\\s]?((((0?[13578])|(1[02]))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\\-\\/\\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))";
        String el2 = "^\\d{4}(\\-|)\\d{1,2}\\1\\d{1,2}$";
        Pattern p = Pattern.compile(el2);
        Matcher m = p.matcher(checkValue);

        System.out.println(p.matcher(checkVale2).matches());
        boolean b = m.matches();
        if(b)
        {

            System.out.println("格式正确");
        }
        else
        {
            System.out.println("格式错误");
        }
    }

}
