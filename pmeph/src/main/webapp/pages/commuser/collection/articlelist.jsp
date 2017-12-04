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
    <link rel="stylesheet" href="<%=path %>/statics/css/jquery.pager.css"/>
    <link rel="stylesheet" href="<%=path %>/statics/css/jquery.selectlist.css"/>
    <link rel="stylesheet" href="<%=path %>/statics/commuser/collection/articlelist.css"/>
    <script src="<%=path %>/resources/comm/jquery/jquery.js"></script>
    <script src="<%=path %>/resources/comm/jquery/jquery.selectlist.js"></script>
    <script src="<%=path %>/resources/comm/jquery/jquery.pager.js"></script>
</head>
<body>
<iframe style="width: 100%;padding: 0;margin: 0;height: 81px;border: none" src="<%=path %>/pages/comm/head.jsp"></iframe>
   <div class="content-wrapper">
        <div class="area1">个人中心 &gt; 我的收藏 &gt; <a href="articlecollection/toarticlecollection.action">文章收藏夹</a> &gt; ${favoriteName }</div>
    <div class="area2">
        <span class="name" >${favoriteName }</span>
         <input type="hidden" id="favoriteName" value="${favoriteName }"/>
         <input type="hidden" id="favoriteId" value="${favoriteId }"/>
        <span class="del" >删除收藏夹</span>
    </div>
    <c:forEach items="${booklist }" var="article"> 
    <div class="collection" >
        <div class="title">
               <span class="title-text">
                   ${article.title }
               </span>
               <span class="tm">
                   <span class="author-icon" style="background-image: url(../测试文件/rollicon.png); ">
                 <!--  <img src="../测试文件/smicon.png" style="width: 15px;height: 15px;border-radius: 50%;"/>-->
                   </span>
                   <span class="name">${article.realname }</span>
                   <span class="time">${article.gmt_create }</span>
               </span>
        </div>
        <div class="content">
            <div  class="content-img">
                <img src="../测试文件/articon.png"/>
            </div>
            <div  class="content-text" >
                <div class="text">
                ${article.summary }
                </div>
                <div class="end">
                    <div class="foot">
                        <span class="span1">取消收藏</span>
                        <span class="span2" >${article.comments }</span>
                        <span class="smicon look"></span>
                        <span class="span3">${article.likes }</span>
                        <span class="smicon good" ></span>
                        <span class="span2">${article.clicks }</span>
                        <span class="smicon look"></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </c:forEach>
       <input type="hidden" id="bookcount" value="${bookcount }" />
       <input type="hidden" id="pagenum" value="${pagenum }" />
       <input type="hidden" id="pagesize" value="${pagesize }" />
       <input type="hidden" id="pages" value="${pages }" />
    <div style="margin-top: 30px;text-align: right">
        <ul class="pagination" id="page1">
        </ul>
        <div style="display: inline-block;    vertical-align: top">
            <select id="edu" name="edu">
                <option value="10" ${pagesize=='10'?'selected':'' } >每页10条</option>
                <option value="20"  ${pagesize=='20'?'selected':'' }>每页20条</option>
                <option value="50"  ${pagesize=='50'?'selected':'' }>每页50条</option>
            </select>
        </div>
        <div class="pageJump">
            <span>共${pages }页，跳转到</span>
            <input type="text"/>
            <span class="pp">页</span>
            <button type="button" class="button">确定</button>
        </div>
    </div>
   </div>
<iframe style="width: 100%;clear:both;padding: 0;margin: 0;height: 200px;border: none" src="<%=path %>/pages/comm/tail.jsp"></iframe>
</body>
</html>
<script>
   
    /*    Page({
     num: 17,					//页码数
     startnum: 6,				//指定页码
     elem: $('#page2'),		//指定的元素
     callback: function (n) {	//回调函数
     console.log(n);
     }
     });*/
     var pathName=window.document.location.pathname;  
	  var projectName=pathName.substring(0,pathName.substr(1).indexOf('/')+1);
	  var $sel;
    $(function () {
    	debugger;
    	var pagenum;
    	if($("#pagenum").val()==""){
    		pagenum=1;
    	}else{
    		pagenum=parseInt($("#pagenum").val());
    	}
    	var pagecount;
    	if(!($("#pages").val()=='')){
    		pagecount=parseInt($("#pages").val());
    	}else{
    		pagecount=1;
    	}
    	
    	Page({
    	        num:pagecount,					
    	        startnum: pagenum,
    	        elem:$("#page1"),
    	        callback: function (n) {
    	        	var pagesize=$("input[name='edu']").val();
    	        	var favoriteName=$("#favoriteName").val();
    	        	var favoriteId=$("#favoriteId").val();
    	            window.location.href=projectName+'/articlecollection/toarticlecollectionlist.action?pagenum='+n+'&pagesize='+pagesize+
    	            		'&favoriteName='+favoriteName+'&favoriteId='+favoriteId;
    	        }
    	 });
      $('select').selectlist({
            zIndex: 10,
            width: 110,
            height: 30,
            optionHeight: 30,
            onChange: function () {
            	var pagesize=$("input[name='edu']").val();
              	var favoriteName=$("#favoriteName").val();
              	var favoriteId=$("#favoriteId").val();
              	 window.location.href=projectName+'/articlecollection/toarticlecollectionlist.action?pagenum=1&pagesize='+pagesize+
           		'&favoriteName='+favoriteName+'&favoriteId='+favoriteId;
            }  //自定义模拟选择列表项chang
        });
    }); 
</script>