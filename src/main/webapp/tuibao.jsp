<%@page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"> 
	<title>民乐保险-退保</title>
	<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.min.css" rel="stylesheet">
	<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"></script>
	<script type="text/javascript" src="js/jquery.min.js" ></script>
	<script type="text/javascript" src="js/paging.js" ></script>
	<script type="text/javascript">
		var startdate='';
		var price='';
		var insuranceid='';
		//ajax
		function testAjax(jiage,kaishiriqi,baodanhao) {
		    //文本的值
		    startdate=kaishiriqi;
         	price=jiage;
         	insuranceid=baodanhao;
		    //alert("日期 是:"+startdate+" 	价格是:"+price+"     保单号是 :"+baodanhao);
		    $.ajax({
		        type : 'get', //提交方式
		        url : "http://localhost:8080/CalculatorRefund/"+startdate+"/"+price, //路径
		        //参数
		        cache : false,
		        //返回普通的字符流不要写 dataType : "json" 
		        success : function(data) {
		        	var arr = data.split("-");
		        	//confirm("共超过犹豫期:"+arr[0]+"天,需要扣除"+arr[1]+"元,最终应退还 "+arr[2]+"元 ,是否继续退保 ?");
		        	//document.getElementById("notice").innerHTML=共超过犹豫期:"+arr[0]+"天,需要扣除"+arr[1]+"元,最终应退还 "+arr[2]+"元 ,是否继续退保 ?";
		        	$('#notice').val("共超过犹豫期:"+arr[0]+"天,需要扣除"+arr[1]+"元,最终应退还 "+arr[2]+"元 ,是否继续退保 ?");
		        }
	   	 	});
		}
		//删除保单中的保单 
		function myFunction() {
			   var aa=$('#dateId').val(); 
			   $.ajax({
			        type : 'get', //提交方式
			        url : "http://localhost:8080/tuibaobyid/"+insuranceid, //路径
			        //参数
			        cache : false,
			        //返回普通的字符流不要写 dataType : "json" 
			        success : function(data) {
			        	alert(data);
			        }
		   	 	});
			   window.location.href="http://localhost:8080/queryalltuibaoinfo"
		}
	</script>
	<script src="laydate/laydate.js"></script>
	<style type="text/css">
		*{margin:0;padding:0;list-style:none;}
		html{background-color:#E3E3E3; font-size:14px; color:#000; font-family:'微软雅黑'}
		h2{line-height:30px; font-size:20px;}
		a,a:hover{ text-decoration:none;}
		pre{font-family:'微软雅黑'}
		.box{width:970px; padding:10px 20px; background-color:#fff; margin:10px auto;}
		.box a{padding-right:20px;}
		.demo1,.demo2,.demo3,.demo4,.demo5,.demo6{margin:25px 0;}
		h3{margin:10px 0;}
		.layinput{height: 22px;line-height: 22px;width: 150px;margin: 0;}
	</style>
	</head>
<body>
<center>
<div style="width:1330px">
<table class="table table-striped">
		<thead>
			<tr>
				<th>保单号</th>
				<th>用户ID</th>
				<th>产品ID</th>
				<th>投保人</th>
				<th>被保人</th>
				<th>保单类型</th>
				<th>价格</th>
				<th>保额</th>
				<th>投保时间</th>
				<th>失效时间</th>
				<th>状态</th>
				<th>操作</th>
			</tr>
		</thead>
	<tbody>
		<c:forEach items="${tuibaoinfo}" var="item">
			<tr>
				<td>${item.insurance_id}</td>
				<td>${item.user_id}</td>
				<td>${item.produce_id}</td>
				<td>${item.toubao_person}</td>
				<td>${item.beibao_person}</td>
				<td>${item.style}</td>
				<td>${item.price}<span style="color:red">￥</span></td>
				<td>${item.border}</td>
				<td>${item.start_date}</td>
				<td>${item.end_date}</td>
				<td>${item.status}</td>
				<td><a type="button" data-toggle="modal" data-target="#myModal" onclick="testAjax('${item.price}','${item.end_date}','${item.insurance_id}')">退保</a>
			<tr>
		</c:forEach>
	</tbody>
</table>
<div>
	<a class="btn" href="http://localhost:8080/queryalltuibaoinfo/1">首页</a>&nbsp;&nbsp;
	<c:choose>
		<c:when test="${pagenum-1==0}">
			<a class="btn" href="http://localhost:8080/queryalltuibaoinfo/1">上一页</a>
		</c:when>
		<c:otherwise>
			<a class="btn" href="http://localhost:8080/queryalltuibaoinfo/${pagenum-1}">上一页</a>
		</c:otherwise>
	</c:choose>&nbsp;&nbsp;
	<span>${pagenum}/${pagecount}</span>&nbsp;&nbsp;
	<c:choose>
		<c:when test="${pagenum+1>pagecount}">
			<a class='btn btn-outline-success btn-sm' href="http://localhost:8080/queryalltuibaoinfo/${pagecount}">下一页</a>
		</c:when>
		<c:otherwise>
			<a class="btn" href="http://localhost:8080/queryalltuibaoinfo/${pagenum+1}">下一页</a>
		</c:otherwise>
	</c:choose>&nbsp;&nbsp;
	<a href="http://localhost:8080/queryalltuibaoinfo/${pagecount}">尾页</a>&nbsp;&nbsp;
	<span>共${alltuibaocount}条记录</span>&nbsp;&nbsp;
	<span>共${pagecount}页</span>&nbsp;&nbsp;
</div>
</center>


<!-- 模态框1（Modal） -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<center><h5 class="modal-title" id="myModalLabel"><span style="color:red">《用户退保协议书》</span></h5></center>
			</div>
			<div class="modal-body">
				<span style="font-size:5px;color:red">
					<p>尊敬的用户:</p>
					<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请认真阅读本协议书内容,阅读完成点击我同意即代表您同意本协议书所有条款,该电子协议书等同纸质协议书,后续若出现任何法律纠纷该协议书具有法律效应。</p>
					<p>1.购保人自购保日起至退保日止若未超过犹豫期(注:犹豫期指包括购保日在内的七天时间),则全额返回投保人所有购保费用,否则将扣除购保费本金的2.5%*购保费用*(超过犹豫期天数)作为本公司的服务费后返还余额。</p>
					<p>2.投保人请认真阅读第一条条款,认真考虑是否退保,若同意第一条条款并继续退保则点击我同意。</p>
				</span>
			</div>
			 <div class="modal-body">
             	<span><font style="color:red">注意:</font></span><input type="text" width="400px" size="70" id="notice" value="" readonly="readonly"/>
            </div>
			<div class="modal-footer">
				<center>
					<button type="button" class="btn btn-primary" data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" onclick="myFunction()">我同意</button>
				</center>
			</div>
		</div>
	</div>
</div>
</body>
</html>























