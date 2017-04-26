<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <script type="text/javascript" src="${ctx}/static/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/particles.js"></script>
    <style>
        .group-input {
            position: absolute;
            border: 1px solid #d5d5d5;
            border-radius: 3px;
            padding: 1px 0;
        }

        body, div, ul, li {
            margin: 0 auto;
            padding: 0;
        }

        body {
            font: 12px "宋体";
            text-align: center;
        }

        .main {
            clear: both;
            padding: 8px;
            text-align: center;
        }

        ul {
            list-style: none;
        }

        #tab0 {
            height: 450px;
            width: 400px;
            border: 1px solid #cbcbcb;
            background-color: #f2f6fb;
        }

        .menu0 {
            width: 400px;
        }

        .menu0 li {
            display: block;
            float: left;
            padding: 4px 0;
            width: 200px;
            height: 30px;
            text-align: center;
            cursor: pointer;
            font-weight: bold;
            font-size:27px;
        }

        .menu0 li.hover {
            background: #f2f6fb;
        }


        #main0 ul {
            display: none;
        }

        #main0 ul.block {
            display: block;
        }
    </style>
</head>
<body style="background-color: #f7fafc ">

<div class="group-input"
     style="position: absolute;width: 400px;height: 450px; background-color:#ecfffd;opacity: 0.35;margin-left: 41%;margin-top: 200px;">
    <div id="tab0">
        <ul class="menu0" id="menu0">
            <li onclick="setTab(0,0)" class="hover">注册</li>
            <li onclick="setTab(0,1)">登陆</li>
        </ul>
        <div class="main" id="main0">
            <ul class="block">
                <li>
                    <input type="text" width="150px" height="70px" placeholder="请输入"/>
                </li>
            </ul>
            <ul>
                <li>评论列表</li>
            </ul>
        </div>
    </div>
</div>

<div id="particles-js">
</div>
<script>

    function setTab(m, n) {
        var tli = document.getElementById("menu" + m).getElementsByTagName("li");
        var mli = document.getElementById("main" + m).getElementsByTagName("ul");

        for (var i = 0; i < tli.length; i++) {
            tli[i].className = i == n ? "hover" : "";
            mli[i].style.display = i == n ? "block" : "none";
        }
    }

    particlesJS('particles-js', {
        particles: {
            color: '#1df0ff',
            shape: 'circle', // "circle", "edge" or "triangle"
            opacity: 1,
            size: 5,
            size_random: true,
            nb: 150,
            line_linked: {
                enable_auto: true,
                distance: 100,
                color: '#830bff',
                opacity: 1,
                width: 1,
                condensed_mode: {
                    enable: false,
                    rotateX: 600,
                    rotateY: 600
                }
            },
            anim: {
                enable: true,
                speed: 1
            }
        },
        interactivity: {
            enable: true,
            mouse: {
                distance: 250
            },
            detect_on: 'canvas', // "canvas" or "window"
            mode: 'grab',
            line_linked: {
                opacity: .5
            },
            events: {
                onclick: {
                    enable: true,
                    mode: 'push', // "push" or "remove" (particles)
                    nb: 4
                }
            }
        },
        /* Retina Display Support */
        retina_detect: true
    });
</script>
</body>
</html>