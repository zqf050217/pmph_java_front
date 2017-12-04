<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/loose.dtd">
        <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%String path = request.getContextPath();%>
<html>
<head>
    <jsp:include page="/pages/comm/head.jsp"></jsp:include>
     <c:set var="ctx" value="${pageContext.request.contextPath}"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="${ctx}/statics/css/base.css" type="text/css">
        <c:set var="ctx" value="${pageContext.request.contextPath}"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="${ctx}/statics/css/base.css" type="text/css">
    <link rel="stylesheet" href="${ctx}/statics/comm/head.css" type="text/css">
    <script type="application/javascript" src="${ctx}/statics/js/jquery/jquery.js"></script>
    <script type="application/javascript" src="${ctx}/statics/js/base.js"></script>
    <link rel="stylesheet" href="${ctx}/statics/commuser/personalcenter/PersonalHome.css" type="text/css">
    <script type="text/javascript" src="${ctx}/resources/comm/jquery/jquery.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            document.getElementById("dt").className = "xz";
            $("#suibiwenzhang").hide()
            $("#zuixinshuping").hide()
            $("#jiaocaishenbao").hide();
            $("#jcsb").click(function () {
                $("#dongtai").hide();
                $("#suibiwenzhang").hide()
                $("#zuixinshuping").hide()
                document.getElementById("dt").className = "dtl";
                document.getElementById("sbwz").className = "dtl";
                document.getElementById("zxsp").className = "dtl";
                $("#jiaocaishenbao").show();
                document.getElementById("jcsb").className = "xz";
            });

            $("#dt").click(function () {
                $("#dongtai").show();
                document.getElementById("dt").className = "xz";
                $("#jiaocaishenbao").hide();
                $("#suibiwenzhang").hide()
                $("#zuixinshuping").hide()
                document.getElementById("jcsb").className = "dtl";
                document.getElementById("sbwz").className = "dtl";
                document.getElementById("zxsp").className = "dtl";
            });

            $("#sbwz").click(function () {
                $("#suibiwenzhang").show();
                document.getElementById("sbwz").className = "xz";
                $("#jiaocaishenbao").hide();
                $("#dongtai").hide()
                $("#zuixinshuping").hide()
                document.getElementById("jcsb").className = "dtl";
                document.getElementById("dt").className = "dtl";
                document.getElementById("zxsp").className = "dtl";
            });

            $("#zxsp").click(function () {
                $("#zuixinshuping").show();
                document.getElementById("zxsp").className = "xz";
                $("#jiaocaishenbao").hide();
                $("#suibiwenzhang").hide()
                $("#dongtai").hide()
                document.getElementById("jcsb").className = "dtl";
                document.getElementById("sbwz").className = "dtl";
                document.getElementById("dt").className = "dtl";
            });

        });

    </script>
</head>
<body>
<div class="body">
    <div class="content-wrapper">
        <div class="wrapper">
            <div class="myinfo">
                <div class="headr">
                    <div id="name">${listPeo}</div>
                    <div id="sex"></div>
                    <br/>
                    <br/>
                    <span id="grqm">我们对痛苦何其敏感,而对快乐相当麻木</span>
                </div>
                <br/>
                <span id="zjrz"></span> <span class="grsx">专家用户</span> <span id="jsrz"></span><span
                    class="grsx">未通过教师认证</span>
                <span class="grsx"><a href="">去认证</a></span>
                <a href=""><span id="zhsz"></span><span class="grsx">账户设置</span></a>
            </div>
            <div class="head">
                <img src="${ctx}/statics/image/touxiang.png" alt="头像" height="164" width="165">
            </div>
        </div>

        <div class="content">
            <div class="left">
                <ul class="dhl">
                    <li id="dt" class="dtl">动态</li>
                    <li id="jcsb" class="dtl">教材申报</li>
                    <li id="sbwz" class="dtl">随笔文章</li>
                    <li id="zxsp" class="dtl">最新书评</li>
                </ul>
                <div id="dhxian"></div>
                <div id="dongtai">

                    <div class="xiaoxi">
                        <div class="dtshang">
                            <div class="shangleft">通过了审核</div>
                            <div class="shangright">2017.7.13 16:21</div>
                        </div>
                        <div class="dtzhong">
                            <span id="xinxiaoxi">	</span> <span class="rlan">恭喜！您于2017年6月24日申报的《神经心理学》编委审核已通过。</span><span
                                id="xiaoxitongguo"></span>
                        </div>
                        <div class="dtxia"></div>
                        <div id="tzxian"></div>
                    </div>

                    <div class="xiaoxi">
                        <div class="dtshang">
                            <div class="shangleft">通过了审核</div>
                            <div class="shangright">2017.7.13 16:21</div>
                        </div>
                        <div class="dtzhong">
                            <span id="xinxiaoxi">	</span> <span class="rlan">恭喜！您于2017年6月24日申报的《神经心理学》编委审核已通过。</span><span
                                id="xiaoxitongguo"></span>
                        </div>
                        <div class="dtxia"></div>
                        <div id="tzxian"></div>
                    </div>


                    <div class="xiaoxi">
                        <div class="dtshang">
                            <div class="shangleft">发表了随笔文章</div>
                            <span id="xiewenzhang"></span>
                            <div class="shangright">2017.7.13 16:21</div>
                        </div>
                        <div class="dtzhong">
                            <div id="suibiwenzhangtp"></div>
                            <div id="suibiwenzhanneirong">
                                <div id="shenhezhong"></div>
                                <div class="suibibt"><span id="shenhezhongwd"></span><span
                                        class="suibibiaoti">医学读书笔记</span></div>
                                <br/>
                                <span class="suibineirong">简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。</span>
                            </div>
                        </div>
                        <div class="dtxia">
                            <span id="bianji"></span><span class="dtxiawz">编辑</span><span id="sanchu"></span><span
                                class="dtxiawz">删除</span>
                        </div>
                        <div id="tzxian"></div>
                    </div>

                    <div class="xiaoxi">
                        <div class="dtshang">
                            <div class="shangleft">发表了随笔文章</div>
                            <span id="xiewenzhang"></span>
                            <div class="shangright">2017.7.13 16:21</div>
                        </div>
                        <div class="dtzhong">
                            <div id="suibiwenzhangtp"></div>
                            <div id="suibiwenzhanneirong">
                                <div id="shenhezhong"></div>
                                <div class="suibibt"><span id="shenhezhongwd"></span><span
                                        class="suibibiaoti">医学读书笔记</span></div>
                                <br/>
                                <span class="suibineirong">简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。</span>
                            </div>
                        </div>
                        <div class="dtxia">
                            <span id="bianji"></span><span class="dtxiawz">编辑</span><span id="sanchu"></span><span
                                class="dtxiawz">删除</span>
                        </div>
                        <div id="tzxian"></div>
                    </div>

                    <div class="xiaoxi">
                        <div class="dtshang">
                            <div class="shangleft">发表了评论</div>
                            <div class="shangright">2017.7.13 16:21</div>
                        </div>
                        <div class="dtzhong">
                            <div id="suibiwenzhangtp"></div>
                            <div id="suibiwenzhanneirong">
                                <div id="pingluntu"></div>
                                <div class="pinlunbt"><span class="suibibiaoti">器官移植护理学</span>
                                    <br/><span class="pinglunlr">于爱莲 评论了 《器官移植护理学》 “非常不错，值得推荐！”</span>
                                    <br/><span class="pinlunxinji"></span><span class="pinlunxinji"></span><span
                                            class="pinlunxinji"></span><span class="pinlunxinjihei"></span></div>
                                <br/>
                                <div class="pinlunbt"><span class="suibineirong">简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。</span>
                                </div>
                            </div>
                        </div>
                        <div class="dtxia">
                            <span id="sanchu"></span><span class="dtxiawz">删除</span>
                        </div>
                        <div id="tzxian"></div>
                    </div>

                    <div class="xiaoxi">
                        <div class="dtshang">
                            <div class="shangleft">发表了评论</div>
                            <div class="shangright">2017.7.13 16:21</div>
                        </div>
                        <div class="dtzhong">
                            <div id="suibiwenzhangtp"></div>
                            <div id="suibiwenzhanneirong">
                                <div id="pingluntu"></div>
                                <div class="pinlunbt"><span class="suibibiaoti">器官移植护理学</span>
                                    <br/><span class="pinglunlr">于爱莲 评论了 《器官移植护理学》 “非常不错，值得推荐！”</span>
                                    <br/><span class="pinlunxinji"></span><span class="pinlunxinji"></span><span
                                            class="pinlunxinji"></span><span class="pinlunxinjihei"></span></div>
                                <br/>
                                <div class="pinlunbt"><span class="suibineirong">简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。</span>
                                </div>
                            </div>
                        </div>
                        <div class="dtxia">
                            <span id="sanchu"></span><span class="dtxiawz">删除</span>
                        </div>
                        <div id="tzxian"></div>
                    </div>


                    <div class="jiazaigengduo">加载更多……</div>
                </div>

                <div id="jiaocaishenbao">
                    <div class="jcsbssl">
                        <span id="jcsbqb"></span><span id="jcsbwdsb"></span><span class="jcsbsbzt">正在进行</span><span
                            class="jcsbsbzt">已结束</span>
                        <span class="jcsbsbzt">暂存</span><span class="jcsbsbzt">已提交</span><input type="text" id="wdsbssk"
                                                                                                value="  公告搜索">
                    </div>
                    <div class="shenbaoliebiao">
                        <ul class="scul">
                            <li class="leftlb">

                                <div class="mleft">
                                    <div class="ysbrs">
                                        <div class="baomingrenshu"><span class="canjiarenshu">178</span><span>人</span>
                                            <br/><span class="ybmcj">已报名参加</span></div>
                                    </div>
                                    <div class="bmcj">
                                        <div class="bmcjan"><span>报名参加</span></div>
                                    </div>
                                </div>

                                <div class="mright">
                                    <div class="rshang">
                                        <div class="rshangn">全国高等学校五年制临床医学专业第九轮规划材料</div>
                                    </div>
                                    <div class="rxia">
                                        <div class="rxian">截止日期： 2017.12.31</div>
                                    </div>
                                </div>

                            </li>

                            <li class="rightlb">
                                <div class="mleft1">
                                    <div class="ysbrs1">
                                        <div class="baomingrenshu1"><span class="canjiarenshu1">137</span><span>人</span>
                                            <br/><span class="ybmcj1">已报名参加</span></div>
                                    </div>
                                    <div class="bmcj1">
                                        <div class="bmcjan1"><span>进度查询</span></div>
                                        <div class="cksbb1">查看申报表</div>
                                    </div>
                                </div>

                                <div class="mright">
                                    <div class="rshang">
                                        <div class="rshangn">全国高等学校本科应用心理学专业第三轮规划教材</div>
                                    </div>
                                    <div class="rxia">
                                        <div class="rxian">截止日期： 2017.12.13</div>
                                    </div>
                                </div>


                            </li>
                       <!-- </ul>
                    </div>-->

                    <!--<div class="shenbaoliebiao">
                        <ul class="scul">-->
                            <li class="leftlb">

                                <div class="mleft2">
                                    <div class="ysbrs2">
                                        <div class="baomingrenshu2"><span class="canjiarenshu2">360</span><span>人</span>
                                            <br/><span class="ybmcj2">已报名参加</span></div>
                                    </div>
                                    <div class="bmcj2">
                                        <div class="bmcjan2"><span>查看申报表</span></div>
                                    </div>
                                </div>

                                <div class="mright">
                                    <div class="rshang">
                                        <div class="rshangn">全国高等学校五年制临床医学专业第九轮规划材料<img src="../image/圆角矩形3.png"></div>
                                    </div>
                                    <div class="rxia">
                                        <div class="rxian">截止日期： 2017.12.31</div>
                                    </div>
                                </div>

                            </li>

                            <li class="rightlb">
                                <div class="mleft3">
                                    <div class="ysbrs3">
                                        <div class="baomingrenshu3"><span class="canjiarenshu3">531</span><span>人</span>
                                            <br/><span class="ybmcj3">已报名参加</span></div>
                                    </div>
                                    <div class="bmcj3">
                                        <div class="bmcjan3"><span>已结束</span></div>
                                    </div>
                                </div>

                                <div class="mright">
                                    <div class="rshang">
                                        <div class="rshangn">全国高等学校五年制临床医学专业第九轮规划材料<img src="../image/圆角矩形3.png"></div>
                                    </div>
                                    <div class="rxia">
                                        <div class="rxian">截止日期： 2017.11.21</div>
                                    </div>
                                </div>

                            </li>
                            <li class="leftlb">

                                <div class="mleft">
                                    <div class="ysbrs">
                                        <div class="baomingrenshu"><span class="canjiarenshu">178</span><span>人</span>
                                            <br/><span class="ybmcj">已报名参加</span></div>
                                    </div>
                                    <div class="bmcj">
                                        <div class="bmcjan"><span>报名参加</span></div>
                                    </div>
                                </div>

                                <div class="mright">
                                    <div class="rshang">
                                        <div class="rshangn">全国高等学校五年制临床医学专业第九轮规划材料</div>
                                    </div>
                                    <div class="rxia">
                                        <div class="rxian">截止日期： 2017.12.31</div>
                                    </div>
                                </div>

                            </li>

                            <li class="rightlb">
                                <div class="mleft1">
                                    <div class="ysbrs1">
                                        <div class="baomingrenshu1"><span class="canjiarenshu1">137</span><span>人</span>
                                            <br/><span class="ybmcj1">已报名参加</span></div>
                                    </div>
                                    <div class="bmcj1">
                                        <div class="bmcjan1"><span>进度查询</span></div>
                                        <div class="cksbb1">查看申报表</div>
                                    </div>
                                </div>

                                <div class="mright">
                                    <div class="rshang">
                                        <div class="rshangn">全国高等学校本科应用心理学专业第三轮规划教材</div>
                                    </div>
                                    <div class="rxia">
                                        <div class="rxian">截止日期： 2017.12.13</div>
                                    </div>
                                </div>


                            </li>
                            <!-- </ul>
                         </div>-->

                            <!--<div class="shenbaoliebiao">
                                <ul class="scul">-->
                            <li class="leftlb">

                                <div class="mleft2">
                                    <div class="ysbrs2">
                                        <div class="baomingrenshu2"><span class="canjiarenshu2">360</span><span>人</span>
                                            <br/><span class="ybmcj2">已报名参加</span></div>
                                    </div>
                                    <div class="bmcj2">
                                        <div class="bmcjan2"><span>查看申报表</span></div>
                                    </div>
                                </div>

                                <div class="mright">
                                    <div class="rshang">
                                        <div class="rshangn">全国高等学校五年制临床医学专业第九轮规划材料<img src="../image/圆角矩形3.png"></div>
                                    </div>
                                    <div class="rxia">
                                        <div class="rxian">截止日期： 2017.12.31</div>
                                    </div>
                                </div>

                            </li>

                            <li class="rightlb">
                                <div class="mleft3">
                                    <div class="ysbrs3">
                                        <div class="baomingrenshu3"><span class="canjiarenshu3">531</span><span>人</span>
                                            <br/><span class="ybmcj3">已报名参加</span></div>
                                    </div>
                                    <div class="bmcj3">
                                        <div class="bmcjan3"><span>已结束</span></div>
                                    </div>
                                </div>

                                <div class="mright">
                                    <div class="rshang">
                                        <div class="rshangn">全国高等学校五年制临床医学专业第九轮规划材料<img src="../image/圆角矩形3.png"></div>
                                    </div>
                                    <div class="rxia">
                                        <div class="rxian">截止日期： 2017.11.21</div>
                                    </div>
                                </div>

                            </li>
                        </ul>
                    </div>


                    <iframe style="width: 100%;clear:both;padding: 0;margin: 0;height: 60px;border: none"
                            src="../comm/分页组件.html"></iframe>
                </div>


                <div id="suibiwenzhang">

                    <div class="xiaoxi">
                        <div class="dtshang">
                            <div class="shangleft">发表了随笔文章</div>
                            <span id="xiewenzhang"></span>
                            <div class="shangright">2017.7.13 16:21</div>
                        </div>
                        <div class="dtzhong">
                            <div id="suibiwenzhangtp"></div>
                            <div id="suibiwenzhanneirong">
                                <div id="shenhezhong"></div>
                                <div class="suibibt"><span id="shenhezhongwd"></span><span
                                        class="suibibiaoti">医学读书笔记</span></div>
                                <br/>
                                <span class="suibineirong">简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。</span>
                            </div>
                        </div>
                        <div class="dtxia">
                            <span id="bianji"></span><span class="dtxiawz">编辑</span><span id="sanchu"></span><span
                                class="dtxiawz">删除</span>
                        </div>
                        <div id="tzxian"></div>
                    </div>


                    <div class="xiaoxi">
                        <div class="dtshang">
                            <div class="shangleft">发表了随笔文章</div>
                            <span id="xiewenzhang"></span>
                            <div class="shangright">2017.7.13 16:21</div>
                        </div>
                        <div class="dtzhong">
                            <div id="suibiwenzhangtp"></div>
                            <div id="suibiwenzhanneirong">
                                <div id="shenhezhong"></div>
                                <div class="suibibt"><span id="shenhezhongwd"></span><span
                                        class="suibibiaoti">医学读书笔记</span></div>
                                <br/>
                                <span class="suibineirong">简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。</span>
                            </div>
                        </div>
                        <div class="dtxia">
                            <span id="bianji"></span><span class="dtxiawz">编辑</span><span id="sanchu"></span><span
                                class="dtxiawz">删除</span>
                        </div>
                        <div id="tzxian"></div>
                    </div>


                    <div class="xiaoxi">
                        <div class="dtshang">
                            <div class="shangleft">发表了随笔文章</div>
                            <span id="xiewenzhang"></span>
                            <div class="shangright">2017.7.13 16:21</div>
                        </div>
                        <div class="dtzhong">
                            <div id="suibiwenzhangtp"></div>
                            <div id="suibiwenzhanneirong">
                                <div id="shenhezhong"></div>
                                <div class="suibibt"><span id="shenhezhongwd"></span><span
                                        class="suibibiaoti">医学读书笔记</span></div>
                                <br/>
                                <span class="suibineirong">简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。</span>
                            </div>
                        </div>
                        <div class="dtxia">
                            <span id="bianji"></span><span class="dtxiawz">编辑</span><span id="sanchu"></span><span
                                class="dtxiawz">删除</span>
                        </div>
                        <div id="tzxian"></div>
                    </div>


                    <div class="xiaoxi">
                        <div class="dtshang">
                            <div class="shangleft">发表了随笔文章</div>
                            <span id="xiewenzhang"></span>
                            <div class="shangright">2017.7.13 16:21</div>
                        </div>
                        <div class="dtzhong">
                            <div id="suibiwenzhangtp"></div>
                            <div id="suibiwenzhanneirong">
                                <div id="shenhezhong"></div>
                                <div class="suibibt"><span id="shenhezhongwd"></span><span
                                        class="suibibiaoti">医学读书笔记</span></div>
                                <br/>
                                <span class="suibineirong">简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。</span>
                            </div>
                        </div>
                        <div class="dtxia">
                            <span id="bianji"></span><span class="dtxiawz">编辑</span><span id="sanchu"></span><span
                                class="dtxiawz">删除</span>
                        </div>
                        <div id="tzxian"></div>
                    </div>

                </div>


                <div id="zuixinshuping">
                    <div class="xiaoxi">
                        <div class="dtshang">
                            <div class="shangleft">发表了评论</div>
                            <div class="shangright">2017.7.13 16:21</div>
                        </div>
                        <div class="dtzhong">
                            <div id="suibiwenzhangtp"></div>
                            <div id="suibiwenzhanneirong">
                                <div id="pingluntu"></div>
                                <div class="pinlunbt"><span class="suibibiaoti">器官移植护理学</span>
                                    <br/><span class="pinglunlr">于爱莲 评论了 《器官移植护理学》 “非常不错，值得推荐！”</span>
                                    <br/><span class="pinlunxinji"></span><span class="pinlunxinji"></span><span
                                            class="pinlunxinji"></span><span class="pinlunxinjihei"></span></div>
                                <br/>
                                <div class="pinlunbt"><span class="suibineirong">简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。</span>
                                </div>
                            </div>
                        </div>
                        <div class="dtxia">
                            <span id="sanchu"></span><span class="dtxiawz">删除</span>
                        </div>
                        <div id="tzxian"></div>
                    </div>
                    <div class="xiaoxi">
                        <div class="dtshang">
                            <div class="shangleft">发表了评论</div>
                            <div class="shangright">2017.7.13 16:21</div>
                        </div>
                        <div class="dtzhong">
                            <div id="suibiwenzhangtp"></div>
                            <div id="suibiwenzhanneirong">
                                <div id="pingluntu"></div>
                                <div class="pinlunbt"><span class="suibibiaoti">器官移植护理学</span>
                                    <br/><span class="pinglunlr">于爱莲 评论了 《器官移植护理学》 “非常不错，值得推荐！”</span>
                                    <br/><span class="pinlunxinji"></span><span class="pinlunxinji"></span><span
                                            class="pinlunxinji"></span><span class="pinlunxinjihei"></span></div>
                                <br/>
                                <div class="pinlunbt"><span class="suibineirong">简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。</span>
                                </div>
                            </div>
                        </div>
                        <div class="dtxia">
                            <span id="sanchu"></span><span class="dtxiawz">删除</span>
                        </div>
                        <div id="tzxian"></div>
                    </div>
                    <div class="xiaoxi">
                        <div class="dtshang">
                            <div class="shangleft">发表了评论</div>
                            <div class="shangright">2017.7.13 16:21</div>
                        </div>
                        <div class="dtzhong">
                            <div id="suibiwenzhangtp"></div>
                            <div id="suibiwenzhanneirong">
                                <div id="pingluntu"></div>
                                <div class="pinlunbt"><span class="suibibiaoti">器官移植护理学</span>
                                    <br/><span class="pinglunlr">于爱莲 评论了 《器官移植护理学》 “非常不错，值得推荐！”</span>
                                    <br/><span class="pinlunxinji"></span><span class="pinlunxinji"></span><span
                                            class="pinlunxinji"></span><span class="pinlunxinjihei"></span></div>
                                <br/>
                                <div class="pinlunbt"><span class="suibineirong">简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。</span>
                                </div>
                            </div>
                        </div>
                        <div class="dtxia">
                            <span id="sanchu"></span><span class="dtxiawz">删除</span>
                        </div>
                        <div id="tzxian"></div>
                    </div>
                    <div class="xiaoxi">
                        <div class="dtshang">
                            <div class="shangleft">发表了评论</div>
                            <div class="shangright">2017.7.13 16:21</div>
                        </div>
                        <div class="dtzhong">
                            <div id="suibiwenzhangtp"></div>
                            <div id="suibiwenzhanneirong">
                                <div id="pingluntu"></div>
                                <div class="pinlunbt"><span class="suibibiaoti">器官移植护理学</span>
                                    <br/><span class="pinglunlr">于爱莲 评论了 《器官移植护理学》 “非常不错，值得推荐！”</span>
                                    <br/><span class="pinlunxinji"></span><span class="pinlunxinji"></span><span
                                            class="pinlunxinji"></span><span class="pinlunxinjihei"></span></div>
                                <br/>
                                <div class="pinlunbt"><span class="suibineirong">简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。简单点，说话的方式简单点。</span>
                                </div>
                            </div>
                        </div>
                        <div class="dtxia">
                            <span id="sanchu"></span><span class="dtxiawz">删除</span>
                        </div>
                        <div id="tzxian"></div>
                    </div>

                </div>


            </div>


            <div class="right">
                <div id="wdsc"><span id="wdscx"></span> <span class="rlan">我的收藏</span> <span id="hyp">换一批</span><span
                        id="jiantou"></span>
                    <br/>
                    <ul class="scul">
                        <li class="sclb"><img src="../image/sp_01.png" class="sctp">器官移植护理学</li>
                        <li class="sclb"><img src="../image/sp_01.png" class="sctp">器官移植护理学</li>
                        <li class="sclb"><img src="../image/sp_01.png" class="sctp">器官移植护理学</li>
                        <li class="sclb"><img src="../image/sp_01.png" class="sctp">器官移植护理学</li>
                        <li class="sclb"><img src="../image/sp_01.png" class="sctp">器官移植护理学</li>
                        <li class="sclb"><img src="../image/sp_01.png" class="sctp">器官移植护理学</li>
                    </ul>
                </div>
                <div id="wdhy"><span id="hytb"></span> <span class="rlan">我的好友</span> <span
                        id="qbhy">全部好友>>&nbsp;</span>
                    <br/>
                    <ul class="scul">
                        <li class="hylb"><img src="../image/haoyoutouxiang1.png" class="hytp">张三</li>
                        <li class="hylb"><img src="../image/haoyoutouxiang1.png" class="hytp">张三</li>
                        <li class="hylb"><img src="../image/haoyoutouxiang1.png" class="hytp">张三</li>
                        <li class="hylb"><img src="../image/haoyoutouxiang1.png" class="hytp">张三</li>
                        <li class="hylb"><img src="../image/haoyoutouxiang1.png" class="hytp">张三</li>
                        <li class="hylb"><img src="../image/haoyoutouxiang1.png" class="hytp">张三</li>
                        <li class="hylb"><img src="../image/haoyoutouxiang1.png" class="hytp">张三</li>
                        <li class="hylb"><img src="../image/haoyoutouxiang1.png" class="hytp">张三</li>
                        <li class="hylb"><img src="../image/haoyoutouxiang1.png" class="hytp">张三</li>
                        <li class="hylb"><img src="../image/haoyoutouxiang1.png" class="hytp">张三</li>
                        <li class="hylb"><img src="../image/haoyoutouxiang1.png" class="hytp">张三</li>
                    </ul>
                </div>
                <div id="wdxz"><span id="xztb"></span><span class="rlan">我加入的小组</span><span
                        id="qbhy">全部小组>>&nbsp;</span>
                    <br/>
                    <ul class="scul">
                        <li class="wdxz"><img src="../image/sp_02.png" class="xztp"><br/>临床心理学<br/><span class="xzrs">(270人)</span>
                        </li>
                        <li class="wdxz"><img src="../image/sp_02.png" class="xztp"><br/>临床心理学<br/><span class="xzrs">(270人)</span>
                        </li>
                        <li class="wdxz"><img src="../image/sp_02.png" class="xztp"><br/>临床心理学<br/><span class="xzrs">(270人)</span>
                        </li>
                        <li class="wdxz"><img src="../image/sp_02.png" class="xztp"><br/>临床心理学<br/><span class="xzrs">(270人)</span>
                        </li>
                        <li class="wdxz"><img src="../image/sp_02.png" class="xztp"><br/>临床心理学<br/><span class="xzrs">(270人)</span>
                        </li>
                        <li class="wdxz"><img src="../image/sp_02.png" class="xztp"><br/>临床心理学<br/><span class="xzrs">(270人)</span>
                        </li>
                        <li class="wdxz"><img src="../image/sp_02.png" class="xztp"><br/>临床心理学<br/><span class="xzrs">(270人)</span>
                        </li>
                        <li class="wdxz"><img src="../image/sp_02.png" class="xztp"><br/>临床心理学<br/><span class="xzrs">(270人)</span>
                        </li>
                        <li class="wdxz"><img src="../image/sp_02.png" class="xztp"><br/>临床心理学<br/><span class="xzrs">(270人)</span>
                        </li>
                    </ul>
                </div>
                <div id="bzzx">
                    <div id="bzxxherd"></div>
                    <span class="bzzxwz">帮助中心</span>
                    <div id="bzxxherd2"></div>
                    <input type="text" id="bzzxcxk" value="请输入您要咨询的问题">
                    <ul class="scul">
                        <li class="bzzxlb"><span id="dianhua"></span><span class="zzfw">自助服务</span></li>
                        <li class="bzzxlb"><span id="shou"></span><span class="zzfw">投诉举报</span></li>
                        <li class="bzzxlb"><span id="kefu"></span><span class="zzfw">我的客服反馈</span></li>
                    </ul>
                </div>
            </div>
            <div style="clear: both"></div>
        </div>
    </div>
</div>
<div style="clear: both"></div>
<jsp:include page="/pages/comm/tail.jsp"></jsp:include>
</body>
</html>