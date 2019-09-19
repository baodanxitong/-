<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path=request.getContextPath();
	String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
function(){

	console.log($(document.documentElement).height());
	var heights=$(document).height();
	
	$(parent.document.getElementById("mainframe")).height(heights);
})


function gopage(myurl,menuid){
	//document.getElementById("mainframe").src = myurl;
	$("#mainframe").attr("src",myurl+"&menuid="+menuid);
}

</script>
<head>
<base href="<%=basepath %>">
    <meta charset="utf-8">
    <title>登录注册</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/jquery.slideBox.css">
</head>
<body>
<div class="wrapper">
    <!--------------------------------------头用户开始------------------------------------->
    <div class="header_user">
        <div class="main_width">
            <span class="tel">客服电话：400-663-6600（周一至周六 9:00-18:00）</span>
            <span class="fr">
                <span class="my_insurance"><a href="#">我的保险</a></span>
                <span class="Backlog"><a href="#">未完成订单</a></span>
                <span class="message"><a href="#">消息</a></span>
                <span class="register"><a href="/ma/register">注册</a></span>
                <span class="fg"><a href="#">|</a></span>
                <span><a href="/ma/login">登录</a></span>
            </span>
        </div>
    </div>
    <!---------------------------------------头用户结束-------------------------------------->
	<div class="header_nav">
        <div class="main_width">
            <h1><a href="#" class="logo fl">民乐保险官网-互联网保险服务平台</a></h1>
            <!--<a href="#" class="my_policy fr">我的保单</a>-->
            <div class="menuBox">
                <ul class="menu">
                    <li class="${subscript0 }"><a href="/ma/main">首页</a></li>
                    <!-- special -->
                    <li class="${subscript1 }"><a href="">保险产品</a></li>
                    <li class="${subscript2 }"><a href="cc/back">个人中心</a></li>
                    <li class="${subscript3 }"><a href="#">关于我们</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>