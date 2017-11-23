<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
  <link rel="stylesheet" href="<%=path %>/statics/css/base.css" type="text/css">
   <link rel="stylesheet" href="<%=path %>/statics/orgmessage/sendmessage.css" type="text/css">
    <script type="text/javascript" src="<%=path %>/statics/js/ueditor1.4.3.3/ueditor.config.js"></script>
    <script type="text/javascript" src="<%=path %>/statics/js/ueditor1.4.3.3/ueditor.all.min.js"></script>
    <script type="text/javascript"src="<%=path %>/statics/js/ueditor1.4.3.3/lang/zh-cn/zh-cn.js"></script>
</head>
<body>
<iframe style="width: 100%;padding: 0;margin: 0;height: 110px;border: none" src="../accountSettings/masters/head_1.html"></iframe>
<div class="message-body" >
    <div class="message">
        <a href="organizationMessage.html">
            <div class="item">
                <div class="off-text">全部消息</div>
                <div class="off-line" ></div>
            </div>
        </a>
        <a href="sendNewMessage.html">
            <div class="item">
                <div class="on-text" >发送消息</div>
                <div class="on-line" ></div>
            </div >
        </a>
    </div>
    <div class="message-list" style="height:923px;font-size: 14px;">
        <div class="title">
            <span  class="span1" style="margin-right: 25px;"><span class="span2">*</span>标题</span>
            <input type="text" placeholder="请输入消息标题 30字以内"/>
        </div>
        <div class="sel-object">
            <span ><span class="span2">*</span>发送对象</span>
            <input type="radio" name="sendObject"/>所有人
            <input type="radio" name="sendObject" />教材报名者
        </div>
        <div class="message-input">
            <span class="tip" ><span class="span2">*</span>消息内容</span>
            <script type="text/plian" id="mText" style="width: 1060px; height:478px;position:absolute;left:126px;top:0px"></script>
        </div>
        <div class="appendix" style="margin-top:30px;margin-left: 32px;margin-bottom: 14px;height: 20px;">
                         <span class="span1">
                              <span class="span2">*</span>添加附件
                         </span>
                         <span class="icon">
                         </span>
                         <span class="name" >委托书.jpg</span>
            <a><span class="operate" >重新上传</span></a>
        </div>
        <p class="file-tip" >
            文件大小不超过100M
        </p>

        <div class="send"  >
            <div style="height: 84px;" >
                <button type="button" style="width: 74px;height: 24px;background-color: #70bcc3;border-radius: 2px
                  ;border:none;font-size: 14px;color: #ffffff;margin-top: 22px;margin-left: 563px">
                    发送</button>
            </div>
        </div>
    </div>
</div>
<iframe style="width: 100%;clear:both;padding: 0;margin: 0;height: 200px;border: none" src="../comm/tail.html"></iframe>
</body>
</html>
<script type="text/javascript">
    UE.getEditor('mText');

</script>
