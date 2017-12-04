<%--
  Created by IntelliJ IDEA.
  User: SuiXinYang
  Date: 2017/11/21
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%String path = request.getContextPath();%>
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="/pages/comm/head.jsp"></jsp:include>
    <c:set var="ctx" value="${pageContext.request.contextPath}"/>
    <title>读书首页</title>
    <link rel="stylesheet" href="${ctx}/statics/css/base.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/statics/commuser/readpage/readpage.css" type="text/css">
    <script type="text/javascript" src="${ctx}/resources/comm/jquery/jquery.js"></script>
    <script src="${ctx}/resources/commuser/readpage/readpage.js" type="text/javascript"></script>
</head>
<body>
<div class="body">
    <div class="content-wrapper">
        <div class="area1">
            <div class="banner">
                <img src="${ctx}/statics/image/gg_01.png" style="margin: 7px;"/>
                <!--广告轮播区域-->
            </div>
            <div class="op-link">
                <!--教程推荐-->
                <img src="${ctx}/statics/image/gg_02.png"/>
            </div>
        </div>
        <div class="area2">
            <div class="area3">
                <div class="block">
                    <div class="tab-bar">
                        <div class="tab recommend active" id="ZKDiv_0" onclick="javaScript:ChangeDiv('0','JKDiv_',3)">
                            学校教育
                        </div>
                        <div class="tab recommend" id="ZKDiv_1" onclick="javaScript:ChangeDiv('1','JKDiv_',3)">
                            毕业后教育
                        </div>
                        <div class="tab recommend" id="ZKDiv_2" onclick="javaScript:ChangeDiv('2','JKDiv_',3)">
                            继续教育
                        </div>
                        <div class="tab recommend" id="ZKDiv_3" onclick="javaScript:ChangeDiv('3','JKDiv_',3)">
                            考试用书
                        </div>
                        <div class="remark">
                            <!--<img class="img_zdtj"/>-->
                            <span class="span_1"></span>
                            <span class="mkbt">重点推荐</span>
                        </div>
                    </div>
                    <!-- 学校教育 -->
                    <div class="content" id="JKDiv_0">
                    	
                    </div>
                    <div class="content" id="JKDiv_1" style="display: none;">
					</div>
                    <div class="content" id="JKDiv_2" style="display: none;">
					</div>
                    <div class="content" id="JKDiv_3" style="display: none;">
                    </div>
                </div>

                <div class="block">
                    <div class="tab-bar" style="border-bottom-color: #FC9C03">
                        <div class="tab type active" id="FYDiv_0" onclick="javaScript:ChangeFYDiv('0','JKFYDiv_',3)">
                            学校教育
                        </div>
                        <div class="tab type" id="FYDiv_1" onclick="javaScript:ChangeFYDiv('1','JKFYDiv_',3)">
                            毕业后教育
                        </div>
                        <div class="tab type" id="FYDiv_2" onclick="javaScript:ChangeFYDiv('2','JKFYDiv_',3)">
                            继续教育
                        </div>
                        <div class="tab type" id="FYDiv_3" onclick="javaScript:ChangeFYDiv('3','JKFYDiv_',3)">
                            考试用书
                        </div>
                        <div class="remark">
                            <img class="span_1" src="${ctx}/statics/image/xstj.png"/>
                            <!--<span id="span_1"></span>-->
                            <span class="mkbt">新书推荐</span>
                        </div>
                    </div>
                    <div class="content" id="JKFYDiv_0">
                    </div>
                    <div class="content" id="JKFYDiv_1" style="display: none;">
                     </div>
                    <div class="content" id="JKFYDiv_2" style="display: none;">
                    </div>
                    <div class="content" id="JKFYDiv_3" style="display: none;">
                    </div>
                </div>


                <div class="block">
                    <div class="title">
                        <div class="line"></div>
                        <div class="name">热门书评</div>
                    </div>
                    <div class="items">
                        <c:forEach var="rmsp" items="${rmspList}">
	                        <div class="item1">
	                            <div class="sp_01"><img src="${rmsp.image_url}"/></div>
	                            <div class="sp_02">
	                                <div class="sp_title">${rmsp.bookname}</div>
	                                <div class="sp_pl">
	                                	<span style="float: left;">${rmsp.realname} 评论了 《${rmsp.bookname}》</span>
	                                	<span class="rwtx1"></span>
			                        	<span class="rwtx1"></span>
			                        	<span class="rwtx1"></span>
			                        	<span class="rwtx2"></span>
			                        	<span class="rwtx2"></span>
                                	</div>
                                	<div style="clear: both"></div>
	                                <div class="sp_remark">${rmsp.content}</div>
	                            </div>
	                        </div>
                        </c:forEach> 
                    
                   <%--  <div class="item1">
                            <div class="sp_01"><img src="${ctx}/statics/image/sp_01.png"/></div>
                            <div class="sp_02">
                                <div class="sp_title">器官移植护理学</div>
                                <div class="sp_pl">
                                	<span style="float: left;">余艾莲 评论了 《器官移植护理学》</span>
                                	<span class="rwtx1"></span>
		                        	<span class="rwtx1"></span>
		                        	<span class="rwtx1"></span>
		                        	<span class="rwtx2"></span>
		                        	<span class="rwtx2"></span>
                                	</div>
                                	<div style="clear: both"></div>
                                <div class="sp_remark">口腔医师资格考试紧密结合口腔临床工作实际，内容
									涵盖从事口腔临床工作所必须的基本素质、基本知识
									和基本技能，考核考生综合运用专业知识处理临床...</div>
                            </div>
                        </div> --%>
                     </div>   
                </div>

            </div>
            <!--描述：图书畅销榜-->
            <div class="area4">
                <div class="rg_content">
                    <span class="tsfl">图书畅销榜</span>
                    <hr style=" height:1px;border:none;border-top:1px solid #f0f0f0;">
                </div>
                <div>
                    <div class="ts_type ts_type1" id="CXDiv_0" onclick="javaScript:ChangeCXDiv('0','JKCXDiv_',3)">
                        <span>学校教育</span></div>
                    <div class="ts_type" id="CXDiv_1" onclick="javaScript:ChangeCXDiv('1','JKCXDiv_',3)">
                        <span>毕业后教育</span></div>
                    <div class="ts_type" id="CXDiv_2" onclick="javaScript:ChangeCXDiv('2','JKCXDiv_',3)">
                        <span>继续教育</span></div>
                    <div class="ts_type" id="CXDiv_3" onclick="javaScript:ChangeCXDiv('3','JKCXDiv_',3)">
                        <span>考试用书</span></div>
                </div>
                <div style="clear: both;height: 14px;"></div>
                <div class="hot-list" id="JKCXDiv_0">
                    
                </div>
                <div class="hot-list" id="JKCXDiv_1" style="display: none;"></div>
                <div class="hot-list" id="JKCXDiv_2" style="display: none;"></div>
                <div class="hot-list" id="JKCXDiv_3" style="display: none;"></div>

                <div style="clear: both"></div>

                <div class="rg_content">
                    <span id="span_3" class="tsfl">图书分类</span>
                    <hr style=" height:1px;border:none;border-top:1px solid #f0f0f0;">
                </div>
                <div>
                    <div class="ts_type ts_type1" id="FLDiv_0" onclick="javaScript:ChangeFLDiv('0','ChangeFLDiv_',3)">
                        <span>学校教育</span></div>
                    <div class="ts_type" id="FLDiv_1" onclick="javaScript:ChangeFLDiv('1','ChangeFLDiv_',3)">
                        <span>毕业后教育</span></div>
                    <div class="ts_type" id="FLDiv_2" onclick="javaScript:ChangeFLDiv('2','ChangeFLDiv_',3)">
                        <span>继续教育</span></div>
                    <div class="ts_type" id="FLDiv_3" onclick="javaScript:ChangeFLDiv('3','ChangeFLDiv_',3)">
                        <span>考试用书</span></div>
                </div>
                <div style="clear: both;height: 14px;"></div>
                <div id="ChangeFLDiv_0" class="tsfl_1">
                    <div class="part_1">
                        <span>研究生教材</span>
                    </div>
                    <div class="part_2">
                        <span>护理</span>
                        <span>临床</span>
                        <span>中医</span>
                        <span>口腔</span>
                    </div>
                    <div class="part_1">
                        <span>本科教材</span>
                    </div>
                    <div class="part_2">
                        <span>护理</span>
                        <span>临床</span>
                        <span>应用心理</span>
                        <span>法医</span>
                        <span>康复治疗</span>
                        <span>麻醉</span>
                        <span>医容美学</span>
                        <span>精神</span>
                        <span>预防</span>
                        <span>生物医学</span>
                        <span>药学</span>
                    </div>
                    <div class="part_1">
                        <span>高职高专教材</span>
                    </div>
                    <div class="part_2">
                        <span>护理</span>
                        <span>临床</span>
                        <span>应用心理</span>
                        <span>法医</span>
                        <span>康复治疗</span>
                        <span>麻醉</span>
                        <span>医容美学</span>
                        <span>精神</span>
                        <span>预防</span>
                        <span>生物医学</span>
                        <span>药学</span>
                    </div>
                    <div class="part_1">
                        <span>中职中专教材</span>
                    </div>
                    <div class="part_2">
                        <span>护理</span>
                        <span>临床</span>
                        <span>应用心理</span>
                        <span>法医</span>
                        <span>康复治疗</span>
                        <span>麻醉</span>
                        <span>医容美学</span>
                    </div>
                    <div class="part_1">
                        <span>长学制教材</span>
                    </div>
                    <div class="part_2">
                        <span>临床医学</span>
                        <span>协编及其他</span>
                    </div>
                </div>
                <div id="ChangeFLDiv_1" class="tsfl_1" style="display: none;">
                    <div class="part_1">
                        <span>研究生教材</span>
                    </div>
                    <div class="part_2">
                        <span>护理</span>
                        <span>临床</span>
                        <span>中医</span>
                        <span>口腔</span>
                    </div>
                    <div class="part_1">
                        <span>本科教材</span>
                    </div>
                    <div class="part_2">
                        <span>护理</span>
                        <span>临床</span>
                        <span>麻醉</span>
                        <span>医容美学</span>
                        <span>精神</span>
                        <span>药学</span>
                    </div>
                    <div class="part_1">
                        <span>高职高专教材</span>
                    </div>
                    <div class="part_2">
                        <span>护理</span>
                        <span>临床</span>
                        <span>应用心理</span>
                    </div>
                    <div class="part_1">
                        <span>中职中专教材</span>
                    </div>
                    <div class="part_2">
                        <span>护理</span>
                        <span>临床</span>
                        <span>应用心理</span>
                    </div>
                    <div class="part_1">
                        <span>长学制教材</span>
                    </div>
                    <div class="part_2">
                        <span>临床医学</span>
                        <span>协编及其他</span>
                    </div>
                </div>
                <div id="ChangeFLDiv_2" class="tsfl_1" style="display: none;">
                    <div class="part_1">
                        <span>研究生教材</span>
                    </div>
                    <div class="part_2">
                        <span>护理</span>
                        <span>口腔</span>
                    </div>
                    <div class="part_1">
                        <span>本科教材</span>
                    </div>
                    <div class="part_2">
                        <span>护理</span>
                        <span>应用心理</span>
                        <span>康复治疗</span>
                        <span>麻醉</span>
                        <span>医容美学</span>
                        <span>生物医学</span>
                        <span>药学</span>
                    </div>
                    <div class="part_1">
                        <span>高职高专教材</span>
                    </div>
                    <div class="part_1">
                        <span>长学制教材</span>
                    </div>
                    <div class="part_2">
                        <span>临床医学</span>
                        <span>协编及其他</span>
                    </div>
                </div>
                <div id="ChangeFLDiv_3" class="tsfl_1" style="display: none;">
                    <div class="part_1">
                        <span>研究生教材</span>
                    </div>
                    <div class="part_2">
                        <span>护理</span>
                        <span>临床</span>
                    </div>
                    <div class="part_1">
                        <span>本科教材</span>
                    </div>
                    <div class="part_2">
                        <span>护理</span>
                        <span>临床</span>
                        <span>应用心理</span>
                        <span>生物医学</span>
                        <span>药学</span>
                    </div>
                    <div class="part_1">
                        <span>高职高专教材</span>
                    </div>
                    <div class="part_2">
                        <span>护理</span>
                        <span>临床</span>
                        <span>应用心理</span>
                        <span>法医</span>
                        <span>康复治疗</span>
                    </div>
                </div>


            </div>
            <div style="clear: both"></div>
        </div>

    </div>
</div>
<jsp:include page="/pages/comm/tail.jsp"></jsp:include>
</body>
</html>
