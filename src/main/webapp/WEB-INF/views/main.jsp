<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <script type="text/javascript" src="${ctx}/static/jquery-3.1.1.min.js"></script>
    <style>
        #popBox{
            position: absolute;
            display:none;
            width:300px;
            height:200px;
            left:40%;
            top:20%;
            z-index:11;
            background:#B8F764;
            box-shadow:0 5px 15px rgba(0,0,0,.5);
        }

        #popLayer{
            position: absolute;
            display:none;
            left:0;
            top:0;
            z-index:10;
            background:#DCDBDC;
            -moz-opacity: 0.8;
            opacity:.80;
            filter: alpha(opacity=80);/*只支持IE6789*/
        }

        body,div,ul,li{

            margin:0 auto;

            padding:0;

        }

        body{

            font:12px "宋体";

            text-align:center;

        }

        a:link{

            color:#00F;

            text-decoration:none;

        }

        a:visited {

            color: #00F;

            text-decoration:none;

        }

        a:hover {

            color: #c00;

            text-decoration:underline;

        }

        ul{

            list-style:none;

        }

        .main{

            clear:both;

            padding:8px;

            text-align:center;

        }

        /*第一种形式*/

        #tabs0 {

            height: 200px;

            width: 400px;

            border: 1px solid #cbcbcb;

            background-color: #f2f6fb;

        }

        .menu0{
            width: 400px;
        }

        .menu0 li{

            display:block;

            float: left;

            padding: 4px 0;

            width:100px;

            text-align: center;

            cursor:pointer;

            background: #FFFFff;

        }

        .menu0 li.hover{

            background: #f2f6fb;

        }

        #main0 ul{

            display: none;

        }

        #main0 ul.block{

            display: block;

        }

    </style>
</head>
<body>
<input type="button" name="popBox" value="弹出层" onclick="popBox()"/>
<div id="popLayer"></div>
<div id="popBox">
    <div><a href="javascript:void(0)" onclick="closeBox()">关闭</a> </div>
    <div>弹出框</div>
</div>

<br />

<br />

<!--第一种形式-->

<div id="tabs0">

    <ul class="menu0" id="menu0">

        <li onclick="setTab(0,0)" class="hover">新闻</li>

        <li onclick="setTab(0,1)">评论</li>

        <li onclick="setTab(0,2)">技术</li>

        <li onclick="setTab(0,3)">点评</li>

    </ul>

    <div class="main" id="main0">

        <ul class="block"><li>新闻列表</li></ul>

        <ul><li>评论列表</li></ul>

        <ul><li>技术列表</li></ul>

        <ul><li>点评列表</li></ul>

    </div>

</div>

<br/>

<script>
    function setTab(m,n){

        var tli=document.getElementById("menu"+m).getElementsByTagName("li");

        var mli=document.getElementById("main"+m).getElementsByTagName("ul");

        for(i=0;i<tli.length;i++){

            tli[i].className=i==n?"hover":"";

            mli[i].style.display=i==n?"block":"none";

        }
    }

    function popBox(){
        $("#popLayer").width(document.body.scrollWidth);
        $("#popLayer").height(document.body.scrollHeight);

        $("#popLayer").show();
        $("#popBox").show();
    }

    function closeBox(){
        $("#popLayer").hide();
        $("#popBox").hide();
    }

    setTimeout(function () {
        alert("123");
    },200)


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