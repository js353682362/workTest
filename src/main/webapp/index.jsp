<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <script type="text/javascript" src="${ctx}/static/jquery-3.1.1.min.js"></script>
</head>
<body>

<div class="panel-head">
    <div id="menus"></div>
</div>

<script>
    var xmlObj = null;
    window.onload = function () {
        if (window.ActiveXObject) {
            xmlObj = new ActiveXObject("Microsoft.XMLHTTP");
        } else if (window.XMLHttpRequest) {
            xmlObj = new XMLHttpRequest();
        } else {
            return;
        }
        xmlObj.open('POST', 'getMenus', false);
        xmlObj.onreadystatechange = showResult;
        xmlObj.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xmlObj.send("fname=Bill&lname=Gates");
    };

    function showResult() {
        if (xmlObj.readyState == 4) {
            if (xmlObj.status == 200) {
                alert(xmlObj.responseText);
            }
        }
    }
</script>
</body>
</html>