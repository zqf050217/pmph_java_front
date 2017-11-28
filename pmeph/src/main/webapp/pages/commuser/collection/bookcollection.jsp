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
    <script src="<%=path %>/resources/comm/jquery/jquery.js"></script>
</head>
<style type="text/css">
</style>
<script type="text/javascript" >
   function toBookList(id,nameid){
	   var pathName=window.document.location.pathname;  
	   var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1); 
	   var name=$("#title"+nameid).text();
	   window.location.href=projectName+"/bookcollection/tobookcollectionlist.action?favoriteId="+id+"&&favoriteName="+name;
   }
</script>
<body>
 <jsp:include page="/pages/comm/head.jsp"></jsp:include>
    <div class="content-wrapper" style="height:763px">
        <div class="message">
            <a href="javascript:;">
                <div class="item">
                    <div class="on-text">书籍收藏夹</div>
                    <div class="on-line" ></div>
                </div>
            </a>
            <a href="articlecollection/toarticlecollection.action">
                <div class="item">
                    <div class="off-text" >文章收藏夹</div>
                    <div class="off-line" ></div>
                </div >
            </a>
        </div>
        <div class="message-line"></div>
        <c:forEach items="${bookCollection }" var="collection" varStatus="status">
          <a href="javascript:toBookList(${collection.id},${status.index });" >
           <div class="collection">
            <p class="title" id="title${status.index }">${collection.favorite_name }</p>
            <p class="count">共${collection.mcount }条内容</p>
           </div>
          </a>
        </c:forEach>
    </div>
<jsp:include page="/pages/comm/tail.jsp"></jsp:include>
</body>
</html>