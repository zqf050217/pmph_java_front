﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="<%=path%>/statics/css/base.css" type="text/css">
    <script type="text/javascript" src="<%=path%>/resources/comm/jquery/jquery.min.js"></script>
    <link rel="stylesheet" href="<%=path%>/statics/css/jquery.pager.css"/>
    <link rel="stylesheet" href="<%=path%>/statics/css/jquery.selectlist.css"/>
    <script src="<%=path%>/resources/comm/jquery/jquery.js"></script>
    <script src="<%=path%>/resources/comm/jquery/jquery.selectlist.js"></script>
    <script src="<%=path%>/resources/comm/jquery/jquery.pager.js"></script>
       
    <script src="<%=path%>/resources/authadmin/accountset/adminInfo.js"></script>
    <link rel="stylesheet" href="<%=path%>/statics/authadmin/accountset/adminInfo.css" type="text/css">
    <link rel="stylesheet" href="<%=path%>/statics/authadmin/accountset/publicStyle.css" type="text/css">
    
<html>
<head>
    <title>Title</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="../../js/jquery/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="../../js/jquery/jquery.selectlist.js"></script>
    <link href="../css/publicStyle.css" rel="stylesheet" type="text/css"/>
    <link href="../css/adminInfo.css" rel="stylesheet" type="text/css"/>
    <link href="../../css/jquery.selectlist.css" rel="stylesheet" type="text/css"/>
    <script type="text/javascript">
        $(function () {
            $('select').selectlist({
                zIndex: 10,
                width: 280,
                height: 40,
                optionHeight: 40
            });
        })
    </script>
    <style type="text/css">
        .select-wrapper {
            background: #f1f1f1;
        }

        .select-button {
            background: #f1f1f1;
            padding-left: 20px;
        }
    </style>
</head>
<body>
<iframe style="width: 100%;padding: 0;margin: 0;height: 112px;border: none" src="../masters/head_1.html"></iframe>
<div style="height:30px"></div>
<div class="div-content">
    <div id="div-child">
        <span class="span1"></span>
        <span class="div-menu-main">个人资料</span>
    </div>
</div>
<div style="height:14px"></div>
<div class="div-content" style="height:25px;"></div>
<div class="div-content">
    <div class="head">
        <img src="../../image/putongyhtouxiang.png" alt=""/>
        <span class="modify">修改头像</span>
        <div class="links">
            <a href="adminAttest.html" class="manager">学校管理员认证</a>
            <a href="changePwd.html" class="password">修改密码</a>
        </div>
        <div style="clear: both"></div>
    </div>
    <div><font class="td-title">基本信息</font></div>
    <table border="0">
        <tr>
            <td align="right" width="110"><font class="td-font"><span class="red">*</span>真实姓名</font></td>
            <td>
                <input class="txt" type="text"/>
            </td>
            <td align="right"><font class="td-font">职务</font></td>
            <td><input class="txt" type="text"/></td>

            <td align="right" width="110"><font class="td-font">联系电话</font></td>
            <td>
                <input class="txt" type="text" placeholder="填写联系电话"/>
            </td>
        </tr>
        <tr>
            <td align="right"><font class="td-font"><span class="red">*</span>性别</font></td>
            <td>
                <input type="radio" value="男" name="radio-set"/><font class="font-1" color="Black">男</font>
                <input type="radio" value="女" name="radio-set"/><font class="font-1" color="Black">女</font>
            </td>
            
            <td align="right" width="110"><font class="td-font"><span class="red"></span>职称</font></td>
            <td>
                <select class="select-td" id="1" name="position">
                    <option value="teacher1">教师1</option>
                    <option value="teacher2">教师2</option>
                    <option value="teacher3">教师3</option>
                    <option value="teacher4">教师4</option>
                    <option value="teacher5">教师5</option>
                </select>
            </td>
            <td align="right"><font class="td-font"><span class="red"></span>手机</font></td>
            <td><input class="txt" type="text"/></td>
        </tr>
        <tr>
            <td align="right"><font class="td-font"><span class="red"></span>邮编</font></td>
            <td><input class="txt" type="text"/></td>
            <td align="right"><font class="td-font">E-mail</font></td>
            <td><input class="txt" type="text"/></td>
            <td align="right"><font class="td-font">传真</font></td>
            <td><input class="txt" type="text"/></td>
        </tr>

        <tr>
            <td align="right"><font class="td-font">地址</font></td>
            <td colspan="5"><input class="txt-L" type="text"/></td>
        </tr>
        <tr>
            <td colspan="6" align="center"><img alt="" width="100%" src="../../image/_cupline.jpg"/></td>
        </tr>
        <tr>
            <td colspan="6" align="center">
                <input class="btn-2" type="submit" value="保存"/>
                <input class="btn-2" type="submit" value="提交"/>
            </td>
        </tr>
    </table>
</div>
<iframe style="width: 100%;clear:both;padding: 0;margin: 0;height: 180px;border: none"
        src="../../comm/tail.html"></iframe>
</body>
</html>