
var contxtpath="http://localhost:8080/pmeph/";
$(function(){
	selectSearchCondition('false');
	queryMain();
	
	
});


//条件设定完成后查询的实现  点击查询 翻页 更换查询条件等都要先设定条件 不能直接调用此实现
function queryMain(){
	data = {
			pageNum:$("#page-num-temp").val(),
			pageSize:$("#pageSize").val(),
			queryName:$("#search-name-temp").val(),
			queryStatus:$("#select-search-status").val()
			};
	
	$.ajax({
		type:'post',
		url:contxtpath+'teacherauth/queryTeacherAuth.action?t='+new Date().getTime(),
		async:false,
		dataType:'json',
		data:data,
		success:function(json){
			$("#zebra-table").html(json.data.html);
			$('#page1').html("");	
			$("#totoal_count").html(json.data.totoal_count);
			//刷新分页栏
			 Page({
                num: json.data.totoal_count,					//页码数
                startnum: $("#page-num-temp").val(),				//指定页码
                elem: $('#page1'),
                callback: function (n){     //点击页码后触发的回调函数
                	$("#page-num-temp").val(n);
                	queryMain();
                }
                });
		}
	});
}

//查询条件切换 姓名或状态   姓名及状态相互制约  多条件暂时禁用
function selectSearchCondition(mutiCondition){
	if(mutiCondition=="ture"){//多条件查询 高级查询按钮触发
		$("#select-search-condition-wrapper").hide();
		$("#search-name").show();
		$("#select-search-status-wrapper").show();
	}else if(mutiCondition=="false"){ //收起查询条件 按钮触发 或默认查询模式
		$("#select-search-condition-wrapper").show();
		if($("#select-search-condition").val() == '1' ) { //根据姓名查询
			$("#search-name").show();
			$("#select-search-status-wrapper").hide();
			$("#select-search-status").val("");
		}else if($("#select-search-condition").val() == '2'){ //根据状态查询
			$("#search-name").hide();
			$("#select-search-status-wrapper").show();
			$("#search-name-temp").val("");
		}
	}
}

//查询按钮点击事件触发 
function queryBtnClick(){
	if($("#select-search-condition").val() == '1' ) { //根据姓名查询
		$("#select-search-status").val("");
		$("#search-name-temp").val($("#search-name").val());
	}else if($("#select-search-condition").val() == '2'){ //根据状态查询
		$("#search-name-temp").val("");
	}
	
	queryMain();
	
	
}

//选择每页数据数量
function selectPageSize(){
	queryMain();
}

//预览资格证 输入为*资格证图片的资源地址	MongoDB对应主键
function previewCert(id){
	alert(id);
}

//通过验证 输入为writer_user_certification	的id
function passCertification(id){
	var data={id:id
			,status:3};
	$.ajax({
		type:'post',
		url:contxtpath+'teacherauth/statusModify.action?t='+new Date().getTime(),
		async:false,
		dataType:'json',
		data:data,
		success:function(json){
			queryMain();
		}
	});
	
}
//退回验证 输入为writer_user_certification	的id
function rejectCertification(id){
	var data={id:id
			,status:2};
	$.ajax({
		type:'post',
		url:contxtpath+'teacherauth/statusModify.action?t='+new Date().getTime(),
		async:false,
		dataType:'json',
		data:data,
		success:function(json){
			queryMain();
		}
	});
}

