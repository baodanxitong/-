<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html lang="en">
<head>
	<base href="<%=basePath %>">
    <meta charset="utf-8">
    <title>登录注册</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/jquery.slideBox.css">
    <script src="js/jquery-1.12.3.min.js"></script>
	<script type="text/javascript">
	$(function(){
		$("#geren").css("padding-bottom","0");
		$("#geren").css("border-bottom","2px solid #ff6700");
	});
	</script>
	
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
	
</head>
<body>
    <!--------------------------------------头用户开始------------------------------------->
    <div class="header_user">
        <div class="main_width">
            <span class="tel">客服电话：400-663-6600（周一至周六 9:00-18:00）</span>
            <span class="fr">
                <span class="my_insurance"><a  href="#">我的保险</a></span>
                <span class="Backlog"><a href="#">未完成订单</a></span>
                <span class="message"><a href="#">消息</a></span>
                <span class="register"><a href="/ma/register">注册</a></span>
                <span class="fg"><a href="#">|</a></span>
                <span><a href="/ma/login">登录</a></span>
            </span>
        </div>
    </div>
    <!---------------------------------------头用户结束-------------------------------------->
    <!---------------------------------------头部导航开始------------------------------------->
    <div class="header_nav" style="height: 110px">
        <div class="main_width">
            <h1><a href="#" class="logo fl">大特保保险官网-互联网保险服务平台</a></h1>
            <!--<a href="#" class="my_policy fr">我的保单</a>-->
            <div class="menuBox">
                <ul class="menu">
                    <li id="subscript0" class=""><a id="shouye" href="ma/index">首页</a></li>
                    <!-- special -->
                    <li id="subscript1" class=""><a id="product" href="http://10.1.14.204:8080/Test_Servlet2/list.jsp" >保险产品</a></li>
                    <li id="subscript2" class=""><a id="geren">个人中心</a></li>
                    <li id="subscript3" class=""><a >关于我们</a></li>
                </ul>
            </div>
        </div>
    </div>
    <!----------------------------------------头部导航结束-------------------------------------->
    
</body>
</html>