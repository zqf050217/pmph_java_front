<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="<%=path%>/statics/js/jquery/jquery.min.js"></script>
    <link href="<%=path%>/statics/comm/publicStyle.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript">


        $(function () {
            $(".div-menu-child").bind("click", function () {
                $(".div-menu-child-click").removeClass("div-menu-child-click");
                $(this).addClass("div-menu-child-click");
            });
        });
        
    </script>
</head>
<body>
<div class="head">
    <div style="width: 100%;background-color:White;">
    <div class="div-content">
        <div id="div-titletop">
            <span class="top-lable1">欢迎访问人教e卫平台！</span>
            <span class="top-lable2">∨</span>
            <span class="top-lable2">&nbsp</span>
            <span class="top-lable2">哈尔滨医科大学的账号</span>
            <span class="top-lable2">&nbsp&nbsp&nbsp&nbsp&nbsp</span>
            <span class="top-lable2">下载手机客户端！</span>
        </div>
    </div>
    </div>
    <div class="div-menu">
        <div class="div-content">
            <div style="width:176px;float:left;"><img alt="" src="<%=path %>/statics/image/_logo.jpg" /></div>
            <div style="width:90px;float:left;">&nbsp</div>
            <div class="div-menu-child">代办事项</div>
            <div class="div-menu-child div-menu-child-click">申报资料审核</div>
            <div class="div-menu-child">教师认证</div>
            <div class="div-menu-child">用户管理</div>
            <div class="div-menu-child">账户设置</div>
            <div class="div-menu-child">消息</div>
        </div>
    </div>
</div>
</body>
</html>

