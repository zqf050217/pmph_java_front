<%--
  Created by IntelliJ IDEA.
  User: SuiXinYang
  Date: 2017/11/21
  Time: 11:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Title</title>
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="${ctx}/statics/css/base.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/statics/comm/head.css" type="text/css">
    <script type="application/javascript" src="${ctx}/statics/js/jquery/jquery.js"></script>
    <script type="application/javascript" src="${ctx}/statics/js/base.js"></script>
</head>
<body>
<div class="head">
    <div class="content-wrapper">
        <div class="content">
            <div class="image">
                <img src="${ctx}/statics/image/logo.png" alt="">
            </div>
            <div class="links">
                <a class="link active" onclick="window.location='${ctx}/pages/commuser/homepage/homepage.jsp'">首页</a>
                <a class="link" onclick="window.location='${ctx}/pages/commuser/readpage/readpage.jsp'">读书</a>
                <a class="link"  onclick="window.location='${ctx}/pages/commuser/articlepage/articlepage.jsp'">文章</a>
            </div>
            <span class="delete"></span>
            <input class="search-input" placeholder="图书/文章">

            <img class="search-icon" src="${ctx}/statics/image/search.png" alt="">

            <span class="write">写文章</span>

            <span class="download">下载APP</span>

            <img class="download-pic" src="${ctx}/statics/image/APP下载.png">

            <!--  <div class="login-logout">
                  <a href="#">登录</a>
                  <span>/</span>
                  <a href="#">注册</a>
                  <img src="../image/question.png" alt="">
              </div>-->
            <div class="user-info">
                <span class="sign"></span>
                <img class="notice-icon" src="${ctx}/statics/image/message.png" alt="">
                <img class="user-icon" src="${ctx}/statics/pictures/head.png" alt="">
            </div>
            <div class="user-select">
                <img src="${ctx}/statics/image/userSelectbg.png" alt="">
                <div class="select">
                    <div class="option">个人中心</div>
                    <div class="option">我的小组</div>
                    <div class="option">教程申报</div>
                    <div class="option out">退出</div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
