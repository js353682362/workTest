<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<head>
    <title>ces</title>
    <script type="text/javascript" src="${ctx}/static/jquery-3.1.1.min.js"></script>
    <link href="${ctx}/static/css/image-style.css" type="text/css" rel="stylesheet" />
    <style>
        .container {
            width: 600px;
            height: 300px;
            margin: 300px 1000px;
            position: fixed;
            /*background: rgba(138, 229, 153, 0.85);*/
            /*background: rgba(19, 70, 112, 0.4) none repeat scroll 0 0;*/
            background-image: url('${ctx}/static/img/tg-chang1ea8a2.png');
            background-repeat: no-repeat;
            background-position: -14px 0px;
            background-size: 316px 299px;
            box-shadow: 0px 1px 3px;
            border-radius: 15px;
        }

        .putInfo {
            border-radius: 15px;
            width: 200px;
            padding-left: 350px;
            padding-top: 30px;
        }

        .loginName {

        }

        .password {
            margin-top: 65px;
        }

        .input {
            width: 185px;
            height: 40px;
            border-radius: 8px;
            position: absolute;
        }

        .button {
            height: 40px;
            width: 40%;
            margin-top: 70%;
            margin-left: 70%;
        }
    </style>
<body style="line-height: 20px; height: 100%; margin: 0;">
<img src="${ctx}/static/img/login_bg.png" class="img_bg"/>
<form action="login" id="loginForm" method="post">
    <div class="container">
        <div style="font-size: 20px;margin-left: 400px;margin-top: 50px">请登录</div>
        <div class="putInfo">
            <input class="input loginName" id="loginName" type="text" placeholder="请输入登陆名"/>
            <input class="input password" id="password" type="password" placeholder="请输入密码"/>
        </div>
        <input type="submit" id="login-button" value="提交" class="button"/>
    </div>
</form>
</body>
<script>
    var LoginData = {};
    var LoginUtils = {
        init: function () {
            LoginUtils.bindEvent();
        },
        bindEvent: function () {

        }
    };
    $(document).ready(function () {
        LoginUtils.init();
    })
</script>
</html>