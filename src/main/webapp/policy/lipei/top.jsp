<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
	String path = request.getContextPath();
	String basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basepath %>"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link href="/backstage/css/eys_stly.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="top">
<div class="top_left">电子商务后台分销系统</div>
<div class="top_right"><a>欢迎：xxxxx</a><i class="pass_top_i"></i><a href="#">修改密码</a><i class="exit_top_i"></i><a href="#">安全退出</a></div>
</div>
</body>
</html>