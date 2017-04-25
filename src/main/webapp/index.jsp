<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <script type="text/javascript" src="${ctx}/static/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="${ctx}/static/js/particles.js"></script>
</head>
<body>

<div>

</div>

<div id="particles-js">
</div>
<script>
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
//    var xmlObj = null;
//    window.onload = function () {
//        if (window.ActiveXObject) {
//            xmlObj = new ActiveXObject("Microsoft.XMLHTTP");
//        } else if (window.XMLHttpRequest) {
//            xmlObj = new XMLHttpRequest();
//        } else {
//            return;
//        }
//        xmlObj.open('POST', 'getMenus', false);
//        xmlObj.onreadystatechange = showResult;
//        xmlObj.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
//        xmlObj.send("fname=Bill&lname=Gates");
//    };
//
//    function showResult() {
//        if (xmlObj.readyState == 4) {
//            if (xmlObj.status == 200) {
//                alert(xmlObj.responseText);
//            }
//        }
//    }
</script>
</body>
</html>