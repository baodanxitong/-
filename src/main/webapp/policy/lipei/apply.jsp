<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
	String path = request.getContextPath();
	String basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basepath %>"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>理赔申请</title>
<script type="text/javascript" src="js/jquery-1.12.3.min.js"></script>
<link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/css/jquery.slideBox.css">
    <script type="text/javascript">
    $("#toubu").load("down.html");
    $("#weibu").load("top.html");
    </script>
</head>
<body>
<jsp:include page="head.jsp" /> 
<div id="toubu"></div>
<div id="weibu"></div>
<jsp:include page="end.jsp" /> 
</body>
</html>