<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
    <title>事项记录</title>
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
    <title>待办事项</title>
    <link rel="stylesheet" href="${ctx}/statics/css/base.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/statics/authadmin/backlog/schedule.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/statics/css/jquery.pager.css"/>
    <link rel="stylesheet" href="${ctx}/statics/css/jquery.selectlist.css"/>
    <script src="${ctx}/resources/comm/jquery/jquery.js"></script>
    <script src="${ctx}/resources/comm/jquery/jquery.selectlist.js"></script>
    <script src="${ctx}/resources/comm/jquery/jquery.pager.js"></script>
    <script src="../js/jquery/jquery.calendar.js"></script>
</head>
<body style="background-color: #f6f6f6;">
<iframe style="width: 100%;padding: 0;margin: 0;height: 110px;border: none" src="${ctx}/pages/comm/headGreenBackGround.jsp"></iframe>
<div class="contentEvent">
    <div class="big">
        <div class="nav">
            <a href="${ctx}/schedule/scheduleList.action"><div class="eventLeft">待办事项</div></a>
            <div class="eventMid">办事记录</div>
            <div class="eventRight">选择日期:
                <input type="text" style="width:70px;" calendar format="'yyyy-mm-dd'" >
            </div>
        </div>
        <div class="bigList">
        <c:forEach items="${listMap}" var="one" varStatus="status">
            <div class="listEvent">
                <div class="leftContent">
                    <div class="leftContentSmall">
                        <div class="pictureDiv">
                            <img  class="picture" src="${ctx}/statics/pictures/head.png">
                        </div>
                    </div>
                    <c:if test="${status.last==false}" >
                    <div class="straightLineEvent">
                        <div class="whiteDiv">

                        </div>
                    </div>
                    </c:if>
                </div>
                <div class="rightContentEvent">
                    <div class="leftEvent">
                        <div class="upContentEvent">
                            <div class="eventTypeAndTime">
                                <span class="eventType">教师资格认证</span>&nbsp;&nbsp;<span class="eventTime">2017-7-18 14:37:28</span>
                            </div>
                        </div>
                        <div class="downContentEvent">
                                <span class="timeEventFont"> 审核了曾若男于2017年5月14日提交的教师资格认证</span>
                        </div>
                    </div>
                    <div class="rightButtonEvent">
                        <div class="buttonDiv">
                            	查看
                        </div>
                    </div>
                </div>
            </div>
            </c:forEach>
        </div>
        <c:if test="${listSize}>10">
        <div class="pageDiv">
            <div style="float: right">
                <ul class="pagination" id="page1">
                </ul>
                <div style="display: inline-block;    vertical-align: top">
                    <select id="edu" name="edu">
                        <option value="10">每页10条</option>
                        <option value="20">每页20条</option>
                        <option value="50">每页50条</option>
                    </select>
                </div>
                <div class="pageJump">
                    <span>共10页，跳转到</span>
                    <input type="text" />
                    <span class="pp">页</span>
                </div>
            </div>

        </div>
		</c:if>
    </div>
    <div class="infoEvent">
        <div class="firstRowEvent">
            <span>${map.org_name}</span>
        </div>
        <div class="secondRowEvent">
            <div class="littleV">
                <img >
            </div>
            <div>
                <span class="littleTitle">${map.org_name},欢迎您!</span>
            </div>
           <c:if test="${map.license==false}">
                	<div>
	                	<span class="littleTitle2">未认证</span>
	                </div>
                </c:if>
                <c:if test="${map.license==true}">
                	<div>
	                	<span class="littleTitle3">已认证</span>
	                </div>
                </c:if>
        </div>
        <div class="thirdRowEvent">
            <span>最近登录:  2017-09-27 16:12:07</span>
        </div>
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
            width: 110,
            height: 30,
            optionHeight: 30
        });
    })
</script>
<iframe style="background-color: #ffffff;width: 100%;clear:both;padding: 0;margin: 0;height: 190px;border: none" src="${ctx}/pages/comm/tail.jsp"></iframe>
</body>
</html>