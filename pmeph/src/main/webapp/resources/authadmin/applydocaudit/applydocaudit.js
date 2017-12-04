//document.write('<script src="/pmeph/resources/comm/jquery/jquery.pager.js"></script>');
var contxtpath="http://localhost:8080/pmeph/";

$(function(){
	var num = parseInt($("#totoal_count").val());
	applyDocAuditQuery(1,"","0");
    /*Page({
        num: num,					//页码数
        startnum: 1,				//指定页码
        elem: $('#page1'),		//指定的元素
        callback: function (n) {	//回调函数
        	applyDocAuditQuery(n,$("#query-condition-temp").val(),$("#status-temp").val());
        }
    });*/

	//状态选择 全部 进行中 己结束
    $(".status-tab").bind("click", function () {
        $(".selected").removeClass("selected");
        $(this).addClass("selected");
        $("#page-num-temp").val(1);
        if ($("#search_condition_input").val()=="") {
        	$("#query-condition-temp").val("");
		}
        $("#status-temp").val($(this).val());
        applyDocAuditQuery($("#page-num-temp").val(),$("#query-condition-temp").val(),$("#status-temp").val());
        
    });
    //结果统计 按钮点击触发事件 跳转页面
    $(".btn-result-statistics").bind("click",function(){
    	var id = $(this).val();
    	window.location.href = contxtpath + "";
    });
  //办理 按钮点击触发事件 跳转页面
    $(".btn-transaction").bind("click",function(){
    	var id = $(this).val();
    	window.location.href = contxtpath + "";
    });
});
                	
//向后台请求查询 三个参数是： 当前页  ，查询条件 ， 查询状态           	
function applyDocAuditQuery(n,query_condition,status){
    
    
	$("#page-num-temp").val(n);
	data = {
			pageNum:n,
			queryCon:$("#query-condition-temp").val(),
			queryStatus:$("#status-temp").val()
			};
	
	$.ajax({
		type:'post',
		url:contxtpath+'applyDocAudit/approvelninelist.action?t='+new Date().getTime(),
		async:false,
		dataType:'json',
		data:data,
		success:function(json){
			$("#nine-block-box-container").html(json.data.html);
			$('#page1').html("");	
			$("#totoal_count").html(json.data.totoal_count);
			//刷新分页栏
			 Page({
                num: json.data.totoal_count,					//页码数
                startnum: n,				//指定页码
                elem: $('#page1'),
                callback: function (n){     //点击页码后触发的回调函数
                	$("#page-num-temp").val(n);
                	applyDocAuditQuery(n,$("#query-condition-temp").val(),$("#status-temp").val());
                }
                });
		}
	});
};
   
//放大镜按钮（搜索）点击触发事件
function search(){
	//temp才是真正的查询条件 仅仅输入输入框而不点击查询按钮 输入框中的内容不应作为查询条件
	$("#query-condition-temp").val($("#search_condition_input").val());
	$("#page-num-temp").val(1);
	applyDocAuditQuery($("#page-num-temp").val(),$("#query-condition-temp").val(),$("#status-temp").val());
}


               