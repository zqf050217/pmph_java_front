<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>




<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<base href="<%=basePath%>">
    <title>教师认证</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="<%=path%>/statics/css/base.css" type="text/css">
    <link rel="stylesheet" href="<%=path%>/statics/authadmin/teacherauth/teacherauth.css" type="text/css">
    <script type="text/javascript" src="<%=path%>/resources/comm/jquery/jquery.min.js"></script>
    <link rel="stylesheet" href="<%=path%>/statics/css/jquery.pager.css"/>
    <link rel="stylesheet" href="<%=path%>/statics/css/jquery.selectlist.css"/>
    <script src="<%=path%>/resources/comm/jquery/jquery.js"></script>
    <script src="<%=path%>/resources/comm/jquery/jquery.selectlist.js"></script>
    <script src="<%=path%>/resources/comm/jquery/jquery.pager.js"></script>
    <script src="<%=path%>/resources/authadmin/teacherauth/teacherauth.js"></script>
</head>
<body>

	<!-- 隐藏域 -->
	
	<input type="hidden" id="search-name-temp" value="">
	<input type="hidden" id="page-num-temp" value="1">

    <div style="width: 100%;padding: 0;margin: 0;height: 110px;border: none;overflow: hidden;">
		<jsp:include page="/pages/comm/headGreenBackGround.jsp"></jsp:include> 
	</div>
    <div class="body">
        <div class="content-wrapper">
            <div class="content-teacher-wrapper">
                <div class="white-out-div">
                    <div>
                    	<div id="select-search-condition-wrapper" >
	                        <select class="search-condition" id="select-search-condition" onchange="selectSearchCondition('false')">
	                            <option value="1">姓名</option>
	                            <option value="2">审核状态</option>
	                        </select>
                        </div>
                        <input class="search-condition " id="search-name">
                        <div id="select-search-status-wrapper">
	                        <select class="search-condition" id="select-search-status">
	                            <option value="">全部</option>
	                            <option value="1">已提交</option>
	                            <option value="2">被退回</option>
	                            <option value="3">通过</option>
	                        </select>
                        </div>
                        <button id="btn-search" onclick="queryBtnClick()">查询</button>
                        <!-- <a id="mutiConditionSwitch">高级查询</a> -->
                        <!--<button id="view-switch">头像视图</button>-->
                    </div>
                    <div class="table-area">
	                    <table id="zebra-table">
	                        <tr>
	                            <th>序号</th>
	                            <th>姓名</th>
	                            <th>身份证</th>
	                            <th>手机</th>
	                            <th>邮箱</th>
	                            <th>职务</th>
	                            <th>职称</th>
	                            <th>审核标志</th>
	                            <th>教师资格证</th>
	                            <th>审核操作</th>
	                        </tr>
	                    </table>
                    </div>
                   
                    <div class="pagination-wrapper">
                        <ul class="pagination" id="page1">
                        </ul>
                        <div style="display: inline-block;    vertical-align: top">
                            <select id="pageSize" name="pageSize" onchange="selectPageSize();">
                                <option value="10">每页10条</option>
                                <option value="20">每页20条</option>
                                <option value="50">每页50条</option>
                            </select>
                        </div>
                        <div class="pageJump">
                            <span>共<span id="totoal_count" >${totoal_count }</span>页，跳转到</span>
                            <input type="text"/>
                            <span class="pp">页</span>
                            <button type="button" class="button">确定</button>
                        </div>
                    </div>
                    
                    <script>
                        Page({
                            num: 16,					//页码数
                            startnum: 3,				//指定页码
                            elem: $('#page1'),		//指定的元素
                            callback: function (n) {	//回调函数
                                console.log(n);
                            }
                        });
                        
                        $(function () {
                            $('select').selectlist({
                                zIndex: 10,
                                width: 110,
                                height: 30,
                                optionHeight: 30
                            });
                            $("#select-search-condition").css({
                                "height":"42"
                                ,"width":"208"
                                ,"padding-left":"0px"
                            });

                            $("#select-search-condition").find(".select-button").css({
                                        "margin":"5px 0px 0px 0px"
                                        ,"width":"208"
                                    }
                            );
                            $("#select-search-condition").find(".select-down").css({
                                "margin":"5px 0px 0px 0px"
                            });

                            $("#select-search-condition").find(".select-list").css({
                                "width":"208px"
                                ,"top":"42px"
                            });
                        })
                    </script>
                </div>
            </div>
        </div>
    </div>
    
	<div style="background-color: white;width: 100%;padding: 0;margin: 0;height: 220px;border: none;overflow: hidden;">
		<jsp:include page="/pages/comm/tail.jsp"></jsp:include> 
	</div>
</body>
</html>