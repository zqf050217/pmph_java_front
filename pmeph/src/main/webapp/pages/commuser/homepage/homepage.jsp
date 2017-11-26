<%--
  Created by IntelliJ IDEA.
  User: SuiXinYang
  Date: 2017/11/21
  Time: 11:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="/pages/comm/head.jsp"></jsp:include>
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
    <title>Title</title>
    <link rel="stylesheet" href="${ctx}/statics/css/base.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/statics/commuser/homepage/homepage.css" type="text/css">
</head>
<body>
<div class="body">
    <div class="content-wrapper" id="aa">
        <div class="area-1">
            <div class="banner">
                <img src="${ctx}/statics/testfile/index.png" style="width: 1050px; height: 380px">
            </div>
            <div class="op-link">
                <div class="title">教材申报</div>
                <div class="link">
                    <span>最新公告</span>
                    <span class="icon">></span>
                </div>
                <div class="link">
                    <span>学校审核</span>
                    <span class="icon">></span>
                </div>
                <div class="link">
                    <span>专家申报</span>
                    <span class="icon">></span>
                </div>
                <div class="link">
                    <span>结果公布</span>
                    <span class="icon">></span>   
                </div>

                <div class="line"></div>

                <div class="title">交互服务</div>
                <div class="link">
                    <span>医学小组</span>
                    <span class="icon">></span>
                </div>

            </div>
        </div>
        <div class="notice area-2">
            <div class="title" style="float: left">
                <div class="line bgcolor-blue" style="float: left"></div>
                <div class="name color-blue" style="float: left"><img src="${ctx}/statics/testfile/gg.png"
                                                                      style="margin-left: 30px;margin-top: 42px"></div>
            </div>
            <c:forEach items="${listDou}" var="list" varStatus="status">
            <c:if test="${status.index==0}">
                 <div class="content-left" style="margin-left: 30px">
	                <p class="content-size">${list.title}</p>
	                <p class="time-size">${list.gmt_create}</p>
                 </div>
            </c:if>
            <c:if test="${status.index!=0}">
                 <div class="content-left">
	                <p class="content-size">${list.title}</p>
	                <p class="time-size">${list.gmt_create}</p>
                 </div>
            </c:if>
            </c:forEach>
            <div class="more">全部>></div>
        </div>
        <div class="notice area-3">
            <div class="title" style="float: left">
                <div class="line bgcolor-blue"></div>
                <div class="name color-blue"><img src="${ctx}/statics/testfile/xx.png" style="margin-left: 30px;margin-top: 15px"></div>
            </div>
            <div class="photo-size">
                <img src="${ctx}/statics/testfile/content.png">
            </div>
           <c:forEach items="${listNot}" var="list" varStatus="status">
             <c:if test="${status.index==0}">
	            <div class="content-photo">
	                <p class="content-size">${list.title}</p>
	                <p class="time-size">发布时间:${list.gmt_create}</p>
	            </div>
	         </c:if>  
	       </c:forEach>
	         <div class="content">
                <ul class="table">
	              <c:forEach items="${listNot}" var="list" varStatus="status">
                    <c:if test="${status.index!=0}">
                      <li>> ${list.title}</li>
                    </c:if>  
	              </c:forEach>
                </ul>
	         </div>
            <div class="more">全部>></div>
        </div>
        <div class="area-4">
            <div class="tab-bar">
                <div class="tab active">学校教育</div>
                <div class="tab ">毕业后教育</div>
                <div class="tab">继续教育</div>
                <div class="tab active">教育用书</div>
                <div class="page ">
                    <span class="page-num">1 / 6</span>
                    <span class="icon-left"></span>
                    <span class="icon-right"></span>
                </div>
                <div class="type ">研究生教材</div>
                <div class="point"></div>
                <div class="type ">研究生教材</div>
                <div class="point"></div>
                <div class="type ">研究生教材</div>
            </div>
            <div class="content">
                <div class="left">
                    <div class="div_photo1">
                        <div class="label"><label style="font-size: 24px;color: #489399">热门标签</label></div>
                        <div class="div1">
                            <div class="little"><span class="little_content">护理</span></div>
                            <div class="little"><span class="little_content">应用心理</span></div>
                            <div class="little"><span class="little_content">法医</span></div>
                            <div class="little"><span class="little_content">口腔医学</span></div>
                            <div class="little"><span class="little_content">医学影像</span></div>
                            <div class="little"><span class="little_content">医学美容</span></div>
                            <div class="little"><span class="little_content">护理</span></div>
                            <div class="little"><span class="little_content">应用心理</span></div>
                            <div class="little"><span class="little_content">口腔医学</span></div>
                            <div class="little"><span class="little_content">眼视光</span></div>
                            <div class="little"><span class="little_content">临床</span></div>
                        </div>
                    </div>
                    <div class="div_photo"></div>
                    <div class="div_photo"></div>
                </div>
                <div class="right">
                    <div class="book"><img src="${ctx}/statics/testfile/rightbook.png" class="bk"><br>
                        <div class="book_content_size">儿童护理学学习指南</div>
                        <div class="book_content_name">
                            <span class="yellow-span">梅长苏</span>
                        </div>
                        <div class="book_content_picture">
                            <span class="yellow"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="con">9</span>
                        </div>
                    </div>
                    <div class="book"><img src="${ctx}/statics/testfile/rightbook.png" class="bk">
                        <div class="book_content_size">儿童护理学学习指南</div>
                        <div class="book_content_name">
                            <span class="yellow-span">梅长苏</span>
                        </div>
                        <div class="book_content_picture">
                            <span class="yellow"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="con">9</span>
                        </div>
                    </div>
                    <div class="book"><img src="${ctx}/statics/testfile/rightbook.png" class="bk">
                        <div class="book_content_size">儿童护理学学习指南</div>
                        <div class="book_content_name">
                            <span class="yellow-span">梅长苏</span>
                        </div>
                        <div class="book_content_picture">
                            <span class="yellow"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="con">9</span>
                        </div>
                    </div>
                    <div class="book"><img src="${ctx}/statics/testfile/rightbook.png" class="bk">
                        <div class="book_content_size">儿童护理学学习指南</div>
                        <div class="book_content_name">
                            <span class="yellow-span">梅长苏</span>
                        </div>
                        <div class="book_content_picture">
                            <span class="yellow"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="con">9</span>
                        </div>
                    </div>
                    <div class="book"><img src="${ctx}/statics/testfile/rightbook.png" class="bk">
                        <div class="book_content_size">儿童护理学学习指南</div>
                        <div class="book_content_name">
                            <span class="yellow-span">梅长苏</span>
                        </div>
                        <div class="book_content_picture">
                            <span class="yellow"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="con">9</span>
                        </div>
                    </div>
                    <div class="book"><img src="${ctx}/statics/testfile/rightbook.png" class="bk">
                        <div class="book_content_size">儿童护理学学习指南</div>
                        <div class="book_content_name">
                            <span class="yellow-span">梅长苏</span>
                        </div>
                        <div class="book_content_picture">
                            <span class="yellow"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="con">9</span>
                        </div>
                    </div>
                    <div class="book"><img src="${ctx}/statics/testfile/rightbook.png" class="bk">
                        <div class="book_content_size">儿童护理学学习指南</div>
                        <div class="book_content_name">
                            <span class="yellow-span">梅长苏</span>
                        </div>
                        <div class="book_content_picture">
                            <span class="yellow"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="con">9</span>
                        </div>
                    </div>
                    <div class="book"><img src="${ctx}/statics/testfile/rightbook.png" class="bk">
                        <div class="book_content_size">儿童护理学学习指南</div>
                        <div class="book_content_name">
                            <span class="yellow-span">梅长苏</span>
                        </div>
                        <div class="book_content_picture">
                            <span class="yellow"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="con">9</span>
                        </div>
                    </div>
                    <div class="book"><img src="${ctx}/statics/testfile/rightbook.png" class="bk">
                        <div class="book_content_size">儿童护理学学习指南</div>
                        <div class="book_content_name">
                            <span class="yellow-span">梅长苏</span>
                        </div>
                        <div class="book_content_picture">
                            <span class="yellow"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="con">9</span>
                        </div>
                    </div>
                    <div class="book"><img src="${ctx}/statics/testfile/rightbook.png" class="bk">
                        <div class="book_content_size">儿童护理学学习指南</div>
                        <div class="book_content_name">
                            <span class="yellow-span">梅长苏</span>
                        </div>
                        <div class="book_content_picture">
                            <span class="yellow"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="behind"></span>
                            <span class="con">9</span>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <div class="area-5">
            <div class="photo"><img src="${ctx}/statics/testfile/adv.png" class="book1"></div>
            <div class="item"><img src="${ctx}/statics/testfile/adv.png" class="book1"></div>
            <div class="item"><img src="${ctx}/statics/testfile/adv.png" class="book1"></div>
            <div class="item"><img src="${ctx}/statics/testfile/adv.png" class="book1"></div>
        </div>

        <div class="area-6">
            <div class="doc"></div>
            <div class="title">
                <span class="doc_content">医学随笔</span>
                <span class="total">全部>></span>
            </div>
            <c:forEach items="${listArt}" var="list" varStatus="status">
               <c:if test="${status.index!=0}">
		            <div class="item1">
		                <div class="big">
		                    <div class="small"><span class="recommend">推荐</span></div>
		                    <div class="pc1"><img src="${ctx}/statics/testfile/a6_photo.png"></div>
		                    <div class="tt"><span class="a6_content">${list.title}</span></div>
		                    <div class="a6_div2"><span class="a6_con2">${list.summary}</span></div>
		                    <div>
		                        <div class="a6_head_div"><img src="${ctx}/statics/testfile/a6_photo.png" class="a6_head"></div>
		                        <div class="a6_name_div"><span>${list.author_id}</span></div>
		                        <div class="a6_time_div"><span>${list.gmt_create}</span></div>
		                    </div>
		                </div>
		            </div>
               </c:if>
            </c:forEach>
            <div class="item">
                <div class="big">
                    <div class="small"><span class="recommend">推荐</span></div>
                    <div class="pc1"><img src="${ctx}/statics/testfile/a6_photo.png"></div>
                    <div class="tt"><span class="a6_content">尊敬的白衣人，您准备好了吗？</span></div>
                    <div class="a6_div2"><span class="a6_con2">相对白衣人的优势与从容，患者的弱势一开始就注定了</span></div>
                    <div>
                        <div class="a6_head_div"><img src="${ctx}/statics/testfile/a6_photo.png" class="a6_head"></div>
                        <div class="a6_name_div"><span>梅长苏</span></div>
                        <div class="a6_time_div"><span>2017.08.08</span></div>
                    </div>
                </div>
            </div>
        </div>


        <div class="area-7">
            <div class="title"></div>
            <div class="item">
                <div class="can"><span class="author">推荐作者</span></div>
                <div class="author1">
                    <div class="a7_head_div"><img src="${ctx}/statics/testfile/a6_photo.png" class="a6_head"></div>
                    <div class="a7_name_div">
                        <div class="a7_author">
                            <span class="a7_write">梅长苏</span>
                        </div>
                        <br>
                        <div class="a7_cont">
                            <span class="a7_cont">发表随笔：“尊敬的白衣人，您准备好了吗？”</span>
                        </div>
                    </div>
                    <div class="a7_friend">
                        <span class="friend"><B>+</B>好友</span>
                    </div>
                </div>
                <div class="author2">
                    <div class="a7_head_div"><img src="${ctx}/statics/testfile/a6_photo.png" class="a6_head"></div>
                    <div class="a7_name_div">
                        <div class="a7_author">
                            <span class="a7_write">梅长苏</span>
                        </div>
                        <br>
                        <div class="a7_cont">
                            <span class="a7_cont">发表随笔：“尊敬的白衣人，您准备好了吗？”</span>
                        </div>
                    </div>
                    <div class="a7_friend">
                        <span class="friend"><B>+</B>好友</span>
                    </div>
                </div>
                <div class="author2">
                    <div class="a7_head_div"><img src="${ctx}/statics/testfile/a6_photo.png" class="a6_head"></div>
                    <div class="a7_name_div">
                        <div class="a7_author">
                            <span class="a7_write">梅长苏</span>
                        </div>
                        <br>
                        <div class="a7_cont">
                            <span class="a7_cont">发表随笔：“尊敬的白衣人，您准备好了吗？”</span>
                        </div>
                    </div>
                    <div class="a7_friend">
                        <span class="friend"><B>+</B>好友</span>
                    </div>
                </div>
                <div class="author2">
                    <div class="a7_head_div"><img src="${ctx}/statics/testfile/a6_photo.png" class="a6_head"></div>
                    <div class="a7_name_div">
                        <div class="a7_author">
                            <span class="a7_write">梅长苏</span>
                        </div>
                        <br>
                        <div class="a7_cont">
                            <span class="a7_cont">发表随笔：“尊敬的白衣人，您准备好了吗？”</span>
                        </div>
                    </div>
                    <div class="a7_friend">
                        <span class="friend"><B>+</B>好友</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="area-8">
            <div class="left">
                <div class="title">
                    <div class="line"></div>
                    <div class="name">热门书评</div>
                </div>
                <div class="last_left1">
                    <div><img src="${ctx}/statics/testfile/rightbook.png" class="last_book"></div>
                    <div class="last_two_font">
                        <div class="last_title_head"><span class="last_title_font">器官移植护理学</span></div>
                        <div class="last_comment">
                            <div class="last_advice_head">梅长苏评论了《器官移植护理学》</div>
                            <div class="last_content_picture1">
                                <span class="last_star_true"></span>
                                <span class="last_star_true"></span>
                                <span class="last_star_true"></span>
                                <span class="last_star_true"></span>
                                <span class="last_star_false"></span>
                            </div>
                        </div>
                        <div class="last_content_head"><span class="last_content_font">口腔医师资格考试紧密结合口腔临床工作实际，内容涵盖从事口腔临床工作所必须
                        素质，基本只是个基本技能，考核考生综合运用专业知识处理临床。。。</span>
                        </div>
                    </div>
                </div>
                <div class="last_left1 last_behind">
                    <div><img src="${ctx}/statics/testfile/rightbook.png" class="last_book"></div>
                    <div class="last_two_font">
                        <div class="last_title_head"><span class="last_title_font">器官移植护理学</span></div>
                        <div class="last_comment">
                            <div class="last_advice_head">梅长苏评论了《器官移植护理学》</div>
                            <div class="last_content_picture1">
                                <span class="last_star_true"></span>
                                <span class="last_star_true"></span>
                                <span class="last_star_true"></span>
                                <span class="last_star_true"></span>
                                <span class="last_star_false"></span>
                            </div>
                        </div>
                        <div class="last_content_head"><span class="last_content_font">口腔医师资格考试紧密结合口腔临床工作实际，内容涵盖从事口腔临床工作所必须
                        素质，基本只是个基本技能，考核考生综合运用专业知识处理临床。。。</span>
                        </div>
                    </div>
                </div>
                <div class="last_left">
                    <div><img src="${ctx}/statics/testfile/rightbook.png" class="last_book"></div>
                    <div class="last_last_font">
                        <div class="last_title"><span class="last_title_font">器官移植护理学</span></div>
                        <div class="last_comment">
                            <div class="last_advice">梅长苏评论了《器官移植护理学》</div>
                            <div class="last_content_picture">
                                <span class="last_star_true"></span>
                                <span class="last_star_true"></span>
                                <span class="last_star_true"></span>
                                <span class="last_star_true"></span>
                                <span class="last_star_false"></span>
                            </div>
                        </div>
                        <div class="last_content"><span class="last_content_font">口腔医师资格考试紧密结合口腔临床工作实际，内容涵盖从事口腔临床工作所必须
                    素质，基本只是个基本技能，考核考生综合运用专业知识处理临床。。。</span>
                        </div>
                    </div>
                </div>
                <div class="last_left last_behind">
                    <div><img src="${ctx}/statics/testfile/rightbook.png" class="last_book1"></div>
                    <div class="last_last_font">
                        <div class="last_title"><span class="last_title_font">器官移植护理学</span></div>
                        <div class="last_comment">
                            <div class="last_advice">梅长苏评论了《器官移植护理学》</div>
                            <div class="last_content_picture">
                                <span class="last_star_true"></span>
                                <span class="last_star_true"></span>
                                <span class="last_star_true"></span>
                                <span class="last_star_true"></span>
                                <span class="last_star_false"></span>
                            </div>
                        </div>
                        <div class="last_content"><span class="last_content_font">口腔医师资格考试紧密结合口腔临床工作实际，内容涵盖从事口腔临床工作所必须
                        素质，基本只是个基本技能，考核考生综合运用专业知识处理临床。。。</span>
                        </div>
                    </div>
                </div>
                <div id="last_div"></div>
            </div>
            <div class="right">
                <div class="title">
                    <div class="line"></div>
                    <div class="name">图书畅销榜</div>
                    <div class="last_right">
                        <div class="last_right_head">
                            <div class="right_div1 active"><span class="last_right_content_title">学校教育</span></div>
                            <div class="div_center"><img src="${ctx}/statics/image/shu.png" style="margin-top: 13px"></div>
                            <div class="right_div1"><span class="last_right_content_title">毕业后教育</span></div>
                            <div class="div_center"><img src="${ctx}/statics/image/shu.png"
                                                         style="margin-top: 13px;margin-left: 3px"></div>
                            <div class="right_div1"><span class="last_right_content_title">继续教育</span></div>
                            <div class="div_center"><img src="${ctx}/statics/image/shu.png" style="margin-top: 13px"></div>
                            <div class="right_div1"><span class="last_right_content_title">考试用书</span></div>
                        </div>
                        <div class="last_right_body">
                            <div class="last_right_book">
                                <img src="${ctx}/statics/testfile/rightbook.png" class="book_style">
                            </div>
                            <div class="num1">
                                <span class="num_book">1</span>
                            </div>
                            <div class="last_right_content">
                                <span class="sale_book">器官移植护理学</span>
                            </div>
                        </div>
                        <div class="last_right_body">
                            <div class="last_right_book">
                                <img src="${ctx}/statics/testfile/rightbook.png" class="book_style">
                            </div>
                            <div class="num2">
                                <span class="num_book">2</span>
                            </div>
                            <div class="last_right_content">
                                <span class="sale_book">器官移植护理学</span>
                            </div>
                        </div>
                        <div class="last_right_body">
                            <div class="last_right_book">
                                <img src="${ctx}/statics/testfile/rightbook.png" class="book_style">
                            </div>
                            <div class="num3">
                                <span class="num_book">3</span>
                            </div>
                            <div class="last_right_content">
                                <span class="sale_book">器官移植护理学</span>
                            </div>
                        </div>
                        <div class="last_right_body body_top">
                            <div class="last_right_book">
                                <img src="${ctx}/statics/testfile/rightbook.png" class="book_style">
                            </div>
                            <div class="num4">
                                <span class="num_book">4</span>
                            </div>
                            <div class="last_right_content">
                                <span class="sale_book">器官移植护理学</span>
                            </div>
                        </div>
                        <div class="last_right_body body_top">
                            <div class="last_right_book">
                                <img src="${ctx}/statics/testfile/rightbook.png" class="book_style">
                            </div>
                            <div class="num4">
                                <span class="num_book">5</span>
                            </div>
                            <div class="last_right_content">
                                <span class="sale_book">器官移植护理学</span>
                            </div>
                        </div>
                        <div class="last_right_body body_top">
                            <div class="last_right_book">
                                <img src="${ctx}/statics/testfile/rightbook.png" class="book_style">
                            </div>
                            <div class="num4">
                                <span class="num_book">6</span>
                            </div>
                            <div class="last_right_content">
                                <span class="sale_book">器官移植护理学</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div style="clear: both"></div>
    </div>
</div>
<jsp:include page="/pages/comm/tail.jsp"></jsp:include>
</body>
</html>
