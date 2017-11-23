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
    <link rel="stylesheet" href="bookCollectionList.css"/>
    <script src="../js/jquery/jquery.js"></script>
    <script src="../js/jquery/jquery.selectlist.js"></script>
    <script src="../js/jquery/jquery.pager.js"></script>
</head>
<body>
<iframe style="width: 100%;padding: 0;margin: 0;height: 81px;border: none" src="../comm/head.html"></iframe>
   <div class="content-wrapper">
       <div class="area1"> <a>个人中心</a> &gt;<a> 我的收藏</a> &gt; <a href="bookCollection.html">书籍收藏夹</a> &gt; <a>医学书籍</a></div>
       <div class="area2">
           <span class="name" >医学书籍</span>
           <span class="del" >删除收藏夹</span>
       </div>
       <div class="collection">
           <div class="title" >
               <span class="title-text" >
                   2017乡村全科执业助理医师资格考试指导用书（试用版）
               </span>
               <span class="author" >
                   作者：医师资格考试指导用书编写组
               </span>
           </div>
           <div class="content" >
               <div class="content-img">
                   <img src="../测试文件/bookicon.png" />
               </div>
               <div class="content-text">
                       <div class="text" >
                           根据《国务院关于建立全科医生制度的指导意见》《国务院办公厅关于进一步加强乡村医生队伍建设的指导意见》和《国务院办公厅关于进一步加强乡村医生队伍建设的实施意见》，为做好乡
                           村医生队伍建设和全科医生队伍建设的有效衔接，在现行医师资格考试中，增设乡村全科执业助理医师资格考试。国家医学考试中心组织专家精心编写了本指导用书。 2017版指导用书在广泛
                           听取专家、考生意见的基础上，进行了全面修订。
                       </div>
                       <div class="end">
                           <div class="foot" style="height:24px;margin-top: 10px">
                               <span class="span1">取消收藏</span>
                               <span class="span2" >7</span>
                               <span class="smicon look"></span>
                               <span class="span3">139</span>
                               <span class="smicon good"></span>
                               <span class="span2" >454</span>
                               <span class="smicon look"></span>
                           </div>
                       </div>
               </div>
           </div>
       </div>
       <div class="collection">
           <div class="title">
               <span class="title-text">
                   全国临床药师规范化培训系列教材--精神专业
               </span>
               <span class="author">
                   作者： 阚全程、马金昌
               </span>
           </div>
           <div class="content" >
               <div class="content-img">
                   <img src="../测试文件/bookicon.png"/>
               </div>
               <div class="content-text">
                   <div class="text">
                       根据《国务院关于建立全科医生制度的指导意见》《国务院办公厅关于进一步加强乡村医生队伍建设的指导意见》和《国务院办公厅关于进一步加强乡村医生队伍建设的实施意见》，为做好乡
                       村医生队伍建设和全科医生队伍建设的有效衔接，在现行医师资格考试中，增设乡村全科执业助理医师资格考试。国家医学考试中心组织专家精心编写了本指导用书。 2017版指导用书在广泛
                       听取专家、考生意见的基础上，进行了全面修订。
                   </div>
                   <div class="end" style="height: 44px ">
                       <div class="foot" style="height:24px;margin-top: 10px">
                           <span class="span1" >取消收藏</span>
                           <span class="span2" >7</span>
                           <span class="smicon look" ></span>
                           <span class="span2" >139</span>
                           <span class="smicon good" ></span>
                           <span class="span2" >454</span>
                           <span class="smicon look"></span>
                       </div>
                   </div>
               </div>
           </div>
       </div>
       <div class="collection">
           <div class="title">
               <span class="title-text">
                   2017口腔执业（含助理）医师资格考试综合笔试高分指南（上、下册）
               </span>
               <span class="tm">
                   <span class="author-icon" style="background-image: url(../测试文件/rollicon.png);">
                   </span>
                   <span clss="name" >骆红斌</span>
                   <span class="time">2017.03.21</span>
               </span>
           </div>
           <div class="content">
               <div class="content-img">
                   <img src="../测试文件/bookicon.png"/>
               </div>
               <div class="content-text" >
                   <div class="text">
                       口腔医师资格考试紧密结合口腔临床工作实际，内容涵盖从事口腔临床工作所必须的基本素质、基本知识和基本技能，考核考生综合运用专业知识处理临床实际问题的能力。因此，学生更需要
                       重点突出、指导性强、具有临床实际指导意义的考试指导用书。 由于大多数考生工作繁忙，备考时间有限，北京大学博士专家组特意根据国家医师资格考试大纲，以规划教材为基础，以临床
                       能力为重点，以考试必需、够用为准则，编写了本套口腔类别医师资格考试用书。
                   </div>
                   <div class="end" style="height: 44px ">
                       <div class="foot" >
                           <span class="span1" >取消收藏</span>
                           <span class="span2" >7</span>
                           <span  class="smicon look" ></span>
                           <span class="span3" >139</span>
                           <span class="smicon good"></span>
                           <span class="span2" >454</span>
                           <span class="smicon look" ></span>
                       </div>
                   </div>
               </div>
           </div>
           <div class="message-line"></div>
       </div>
       <div style="margin-top: 30px;text-align: right">
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
<iframe style="width: 100%;clear:both;padding: 0;margin: 0;height: 200px;border: none" src="../comm/tail.html"></iframe>
</body>
</html>
<script>
    Page({
        num: 16,					//页码数
        startnum: 3,				//指定页码
        elem: $('#page1'),		//指定的元素
        callback: function (n) {	//回调函数
            console.log(n);
        }
    });
    /*    Page({
     num: 17,					//页码数
     startnum: 6,				//指定页码
     elem: $('#page2'),		//指定的元素
     callback: function (n) {	//回调函数
     console.log(n);
     }
     });*/
    $(function () {
        $('select').selectlist({
            zIndex: 10,
            width: 110,
            height: 30,
            optionHeight: 30
        });
    })
</script>