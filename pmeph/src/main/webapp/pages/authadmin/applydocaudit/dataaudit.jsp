<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <%-- <jsp:include page="/pages/comm/head.jsp"></jsp:include> --%>
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
    <title>Title</title>
    <link rel="stylesheet" href="${ctx}/statics/css/base.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/statics/authadmin/applydocaudit/dataaudit.css" type="text/css">
    <script type="text/javascript" src="${ctx}/resources/comm/jquery/jquery.js"></script>
    <script src="${ctx}/resources/authadmin/applydocaudit/dataaudit.js" type="text/javascript"></script>
</head>
<body>
<jsp:include page="/pages/comm/headGreenBackGround.jsp"></jsp:include>
    <div class="body">
        <div class="content-wrapper">
            <div class="title">
                <span>资料审核>全国高等学校五年制临床医学专业第九轮规划教材</span>
            </div>
            <div class="box">
                <div class="query_btn">
                     <div class="query">
                         <input class="query_input"   value="名字/职务/关键词"/>
                     </div>
                     <div class="btn">
                         <button class="btn_1">查 询</button>
                         <button class="btn_2" >导出Excel</button>
                         <button class="btn_3">返 回</button>
                     </div>
                </div>

                <div class="message">
                    <table class="table">
                        <thead>
                        <tr >
                            <td>序号</td>
                            <td>姓名</td>
                            <td>职务</td>
                            <td>职称</td>
                            <td>所选书籍与职务</td>
                            <td>学校审核</td>
                            <td>出版社审核</td>
                            <td>遴选结果</td>
                        </tr>
                        </thead>
                        <tbody>
                        <tr >
                            <td>1</td>
                            <td class="font_name">龚朝辉</td>
                            <td>院长助理</td>
                            <td>教授</td>
                            <td>生物化学与分子生物学-编委</td>
                            <td>已审核</td>
                            <td>已收到纸质表</td>
                            <td>遴选已结束</td>
                        </tr>
                        <tr >
                            <td>2</td>
                            <td class="font_name">龚朝辉</td>
                            <td>院长助理</td>
                            <td>教授</td>
                            <td>生物化学与分子生物学-编委</td>
                            <td>已审核</td>
                            <td>已收到纸质表</td>
                            <td>遴选已结束</td>
                        </tr>
                        <tr >
                            <td>3</td>
                            <td class="font_name">龚朝辉</td>
                            <td>院长助理</td>
                            <td>教授</td>
                            <td>生物化学与分子生物学-编委</td>
                            <td>已审核</td>
                            <td>已收到纸质表</td>
                            <td>遴选已结束</td>
                        </tr>
                        <tr >
                            <td>4</td>
                            <td class="font_name">龚朝辉</td>
                            <td>院长助理</td>
                            <td>教授</td>
                            <td>生物化学与分子生物学-编委</td>
                            <td>已审核</td>
                            <td>已收到纸质表</td>
                            <td>遴选已结束</td>
                        </tr>
                        <tr >
                            <td>5</td>
                            <td class="font_name">龚朝辉</td>
                            <td>院长助理</td>
                            <td>教授</td>
                            <td>生物化学与分子生物学-编委</td>
                            <td>已审核</td>
                            <td>已收到纸质表</td>
                            <td>遴选已结束</td>
                        </tr>
                        <tr >
                            <td>6</td>
                            <td class="font_name">龚朝辉</td>
                            <td>院长助理</td>
                            <td>教授</td>
                            <td>生物化学与分子生物学-编委</td>
                            <td>已审核</td>
                            <td>已收到纸质表</td>
                            <td>遴选已结束</td>
                        </tr>
                        <tr >
                            <td>7</td>
                            <td class="font_name">龚朝辉</td>
                            <td>院长助理</td>
                            <td>教授</td>
                            <td>生物化学与分子生物学-编委</td>
                            <td>已审核</td>
                            <td>已收到纸质表</td>
                            <td>遴选已结束</td>
                        </tr>
                        <tr >
                            <td>8</td>
                            <td class="font_name">龚朝辉</td>
                            <td>院长助理</td>
                            <td>教授</td>
                            <td>生物化学与分子生物学-编委</td>
                            <td>已审核</td>
                            <td>已收到纸质表</td>
                            <td>遴选已结束</td>
                        </tr>
                        <tr >
                            <td>9</td>
                            <td class="font_name">龚朝辉</td>
                            <td>院长助理</td>
                            <td>教授</td>
                            <td>生物化学与分子生物学-编委</td>
                            <td>已审核</td>
                            <td>已收到纸质表</td>
                            <td>遴选已结束</td>
                        </tr>
                        <tr >
                            <td>10</td>
                            <td class="font_name">龚朝辉</td>
                            <td>院长助理</td>
                            <td>教授</td>
                            <td>生物化学与分子生物学-编委</td>
                            <td>已审核</td>
                            <td>已收到纸质表</td>
                            <td>遴选已结束</td>
                        </tr>
                        </tbody>
                    </table>
                </div>

                <div class="pg_right">
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
                        <input type="text"/>
                        <span class="pp">页</span>
                        <button type="button" class="button">确定</button>
                    </div>
                </div>
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
            zIndex: 10,
            width: 110,
            height: 30,
            optionHeight: 30
        });
    })
</script>
<jsp:include page="/pages/comm/tail.jsp"></jsp:include>
</body>
</html>
