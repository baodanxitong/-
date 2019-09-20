<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path=request.getContextPath();
	String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<script src="/backstage/js/jquery.js"></script>
<script src="/backstage/js/eye_all.js"></script>
<script>
$(function(){
	$(".left1 ul li").hover(function(){
		$(this).addClass("left1_li_hover");
		$(this).find("ul").show();
		$(this).siblings().find("ul").hide();
		
		},function(){
			$(this).removeClass("left1_li_hover");
			})
	})
</script>
<head>
<meta charset="UTF-8">
<base href="<%=basepath%>">
<title>后台首页</title>
</head>
<body>
		<jsp:include page="top.jsp"></jsp:include>
		<jsp:include page="left.jsp"></jsp:include>
		<!-- 左边两个div的宽度为250px -->
		<div style="width: 500px;height: 500px;background-color: red;margin:25px 425px">
			<img src="/images/1.png"/>
		</div>
</body>
</html>