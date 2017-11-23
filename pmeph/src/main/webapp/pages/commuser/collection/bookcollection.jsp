<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
 <link rel="stylesheet" href="<%=path %>/statics/css/base.css" type="text/css">
    <link rel="stylesheet" href="<%=path %>/statics/commuser/collection/bookcollection.css" type="text/css">
</head>
<style type="text/css">
</style>
<body>
<iframe style="width: 100%;padding: 0;margin: 0;height: 81px;border: none" src="../comm/head.html"></iframe>
    <div class="content-wrapper" style="height:763px">
        <div class="message">
            <a href="bookCollection.html">
                <div class="item">
                    <div class="on-text">书籍收藏夹</div>
                    <div class="on-line" ></div>
                </div>
            </a>
            <a href="articleCollection.html">
                <div class="item">
                    <div class="off-text" >文章收藏夹</div>
                    <div class="off-line" ></div>
                </div >
            </a>
        </div>
        <div class="message-line"></div>
        <c:forEach items="${bookCollection }" var="collection">
          <a href="bookcollection/booklist.action?favoriteId=${collection.id }">
           <div class="collection">
            <p class="title" >${collection.favorite_name }</p>
            <p class="count">共${collection.mcount }条内容</p>
           </div>
          </a>
        </c:forEach>
       <%--  <a href="bookCollectionList.html">
        <div class="collection">
            <p class="title" >${bookCollection }</p>
            <p class="count">共34条内容</p>
        </div></a> --%>
       <!--  <a href="bookCollectionList.html"><div class="collection">
            <p class="title" >神经学</p>
            <p class="count">共34条内容</p>
        </div></a>
        <a href="bookCollectionList.html"><div class="collection">
            <p class="title" >神经学</p>
            <p class="count">共34条内容</p>
        </div></a>
        <a href="bookCollectionList.html"><div class="collection">
            <p class="title" >神经学</p>
            <p class="count">共34条内容</p>
        </div></a> -->
    </div>
<iframe style="width: 100%;clear:both;padding: 0;margin: 0;height: 200px;border: none" src="../comm/tail.html"></iframe>
</body>
</html>