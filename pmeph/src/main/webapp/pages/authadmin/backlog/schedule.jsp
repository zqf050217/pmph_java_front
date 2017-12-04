<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
    <title>待办事项</title>
    <link rel="stylesheet" href="${ctx}/statics/css/base.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/statics/authadmin/backlog/schedule.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/statics/css/jquery.pager.css"/>
    <link rel="stylesheet" href="${ctx}/statics/css/jquery.selectlist.css"/>
    <script src="${ctx}/resources/comm/jquery/jquery.js"></script>
    <script src="${ctx}/resources/comm/jquery/jquery.selectlist.js"></script>
    <script src="${ctx}/resources/comm/jquery/jquery.pager.js"></script>
</head>
<body style="background-color: #f6f6f6;">
<iframe style="width: 100%;padding: 0;margin: 0;height: 110px;border: none" src="${ctx}/pages/comm/headGreenBackGround.jsp"></iframe>
<div class="body"  >
	<input id="license" value="${license}" type="hidden"/>
    <div class="content-wrapper">
        <div class="big">
                <div class="left">待办事项</div>
                <div class="mid"><a class="midButton" href="${ctx}/schedule/eventRecord.action">办事记录</a></div>
                <div class="right">
                   <div style="float: right;">
                      		 筛选：
                       <select id="filtrate-select">
                           <option>一周内</option>
                           <option>选项二</option>
                           <option>选项三</option>
                           <option>选项四</option>
                           <option>选项五</option>
                       </select>
                   </div>
                </div>
            <div class="bigList">
            <c:forEach items="${listMap}" var="one" varStatus="status">
            	<div class="list">
                    <div class="leftContent">
                        <div class="leftContentSmall">
                            <div class="pictureDiv">
                                <img  class="picture" src="${ctx}/statics/pictures/head.png">
                            </div>
                        </div>
                       <c:if test="${status.last==false}" >
                        <div class="straightLine">
                            <div class="whiteDiv">

                            </div>
                        </div>
                        </c:if> 
                         	
                         
                    </div>
                    <div class="rightContent">
                            <div class="leftPictureAndName">
                                <div class="upContent">
                                        <div class="headPicture">
                                            <img class="picture1"  src="${ctx}/statics/pictures/head.png">
                                        </div>
                                        <div class="username">
                                             <span>${one.NAME}</span>
                                        </div>
                                </div>
                                <div class="downContent">
                                    <div class="timeEvent">
                                        <span class="time">${one.TIME}</span>&nbsp;&nbsp;<span class="event">提交${one.TYPE}</span><span class="event">请审批</span>
                                    </div>
                                </div>
                            </div>
                            <div class="rightButton">
                                <div onclick="toogleTip('block')" class="buttonDiv">
                                        		办理
                                </div>
                            </div>
                    </div>
            </div>
            
            </c:forEach>
            
            </div>
            <div class="tip" id="tip">
                <div class="upDiv">
                    <div class="tipPicture" >
                        <img src="${ctx}/statics/pictures/表情-难过.png">
                    </div>
                    <div class="tipWords">
                        <span>您目前还不是机构管理员，快去认证吧</span>
                    </div>
                </div>
                <div class="downDiv">
                    <div class="leftButton" onclick="toogleTip('none')">知道了</div>
                    <div class="checkButton">马上认证</div>
                </div>
                <div class="close" id="close" onclick="toogleTip('none')">
                    <span>×</span>
                </div>
            </div>
            <div class="gray ie" onclick="toogleTip('none')"></div>
            
            <c:if test="${listSize>1}">
            	<div class="pageDiv">
                <div style="float: right;">
                    <ul class="pagination" id="page1">
                    </ul>
                    <div style="display: inline-block;    vertical-align: top">
                        <select id="edu" name="edu" >
                            <option value="2" ${pageSize=='2' ?'selected':''}>每页2条</option>
                            <option value="3" ${pageSize=='3' ?'selected':''}>每页3条</option>
                            <option value="4" ${pageSize=='4' ?'selected':''}>每页4条</option>
                        </select>
                    </div>
                    <div class="pageJump">
                        <span>共${totalPage}页，跳转到</span>
                        <input type="text" id="toPage"/>
                        <span class="pp">页</span>
                        <button type="button" class="button">确定</button>
                    </div>
                </div>
            </div>
            </c:if>
        </div>

        <div class="info">
            <div class="topPictureDiv">
                <img class="topPicture"src="${ctx}/statics/pictures/head.png">
            </div>
            <div class="firstRow">
                <span>${map.org_name }</span>
            </div>
            <div class="secondRow">
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
            <div class="thirdRow">
                <span>最近登录:  2017-09-27 16:12:07</span>
            </div>
        </div>
        </div>
   </div>

<script>
    Page({
        num: "${totalPage}",					//页码数
        startnum: "${currentPage}",				//指定页码
        elem: $('#page1'),		//指定的元素
        callback: function (n) {	//回调函数
            console.log(n);
            window.location.href="${ctx}/schedule/scheduleList.action?currentPage="+n+"&pageSize="+$("input[name='edu']").val(); 
        }
    });
    
    $(function () {
        $('#filtrate-select').selectlist({
            width: 100,
            height: 20,
            optionHeight: 20
        });
        $('#edu').selectlist({
            width: 110,
            height: 30,
            optionHeight: 30,
            onChange:function (){
            	window.location.href="${ctx}/schedule/scheduleList.action?pageSize="+$("input[name='edu']").val();
            }
            
        });
    })
    function toogleTip(val) {
    	/* var license = document.getElementById("license").val();
    	if(license==false){ */
    		 $('.tip').css('display',val);
    	     $('.gray').css('display',val);
    }
    
</script>
<iframe style="background-color: #ffffff;width: 100%;clear:both;padding: 0;margin: 0;height: 190px;border: none" src="${ctx}/pages/comm/tail.jsp"></iframe>
</body>
</html>