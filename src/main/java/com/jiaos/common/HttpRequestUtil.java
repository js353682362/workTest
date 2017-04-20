package com.jiaos.common;

import javax.servlet.ServletRequest;

/**
 * @（#）:HttpRequestUtils.java
 * @description:
 * @author: jiaosen 2017/4/20
 * @version: Version 1.0
 */
public class HttpRequestUtil {

    public static String getValue(ServletRequest request, String paramName) {
        return request.getParameter(paramName);
    }

    public static String getString(ServletRequest request, String paramName) {
        return getValue(request, paramName);
    }

    public static Long getLong(ServletRequest request, String paramName) {
        return Long.valueOf(getString(request, paramName));
    }

    public static Integer getInteger(ServletRequest request, String paramName) {
        return Integer.valueOf(getString(request, paramName));
    }
}
