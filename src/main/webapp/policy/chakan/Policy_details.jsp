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
    <title>保单详情</title>
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

<!-- 表格整体高度需要调整 -->
<div>
	<table border="1px" style="width: 1000px;height: 800px;margin: auto;">
		<tr>
			<td style="width: 150px">1</td>
			<td>1</td>
		</tr>
		<tr>
			<td>2</td>
			<td>2</td>
		</tr>
		<tr>
			<td>3</td>
			<td>3</td>
		</tr>
		<tr>
			<td>3</td>
			<td>3</td>
		</tr>
		<tr>
			<td>3</td>
			<td>3</td>
		</tr>
		<tr>
			<td>3</td>
			<td>3</td>
		</tr>
		<tr>
			<td>3</td>
			<td>3</td>
		</tr>
		<tr>
			<td>3</td>
			<td>3</td>
		</tr>
		<tr>
			<td>3</td>
			<td>3</td>
		</tr>
		<tr>
			<td>3</td>
			<td>3</td>
		</tr>
		<tr>
			<td>3</td>
			<td>3</td>
		</tr>
		<tr>
			<td>3</td>
			<td>3</td>
		</tr>
		<tr>
			<td>3</td>
			<td>3</td>
		</tr>
		
		
	</table>
</div>


<div class="wrapper">
   

	<div class="copyright">
        <div class="main_width footer">
            <div class="footer_nav">
                <p>
                    <a href="#">关于民乐保险</a>
                    <span class="divider">|</span>
                    <a href="#">关于民乐小金库</a>
                    <span class="divider">|</span>
                    <a href="#">关于民乐钱包</a>
                    <span class="divider">|</span>
                    <a href="#">关于民乐白条</a>
                    <span class="divider">|</span>
                    <a href="#">联系我们</a>
                    <span class="divider">|</span>
                    <a href="#">免责声明</a>
                </p>
                <p>Copyright © 2004-2016 民乐ML.com 版权所有<span class="divider">|</span>投资有风险，购买需谨慎</p>
            </div>
            <div class="footer_contact">
                <div class="f_contact_time">
                    联系我们<span>（09:00-22:00）</span>
                </div>
                <div class="f_contact_content">
                    <div class="f_cc_left">
                        <span class="f_cc_item">个人业务：400-098-8511</span>
                        <span class="f_cc_item">企业业务：400-088-8816</span>
                    </div>
                    <div class="f_cc_mid">
                        <a href="#" class="f_cc_link item_JIMI">咨询ML</a>
                        <a href="#" class="f_cc_link item_kefu">在线客服</a>
                    </div>
                    <div class="f_cc_right">
                        <a href="#" class="f_cc_link item_mail">客服邮箱</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--页脚结束-->
</div>