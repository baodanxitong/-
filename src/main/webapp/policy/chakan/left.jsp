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
<style type="text/css">
	a:hover {
	color: #333333;
}
</style>
<link href="/backstage/css/eys_stly.css" rel="stylesheet" type="text/css" />
</head>
<body  style="overflow-x:hidden">
<div class="left_all">
<div class="left1">
<ul>
<li><div class="div_icon">首页</div>
	<ul style="margin-top:50px;">
<li><a href="cc/backhoutai"target="rightFrame">首页</a></li>
	</ul>
</li>



	</li>
<li><div class="div_icon">业务员</div>
<ul style="margin-top:50px;">
<li><a href="cc/yewuyuan" target="rightFrame">业务员</a></li>
</ul>
</li>
<li><div class="div_icon">理赔管理</div>
<ul style="margin-top:50px;">
<li><a href="shoe_house.html" target="rightFrame">理赔审核</a></li>
<li><a href="shoe_add.html" target="rightFrame">理赔计算</a></li>
</ul>
</li>
<li><div class="div_icon">退保管理</div>
<ul style="margin-top:50px;">
	<li><a  href="doc_manage.html" target="rightFrame">退保管理</a></li>
	<li><a  href="doc_manage.html" target="rightFrame">退保计算</a></li>
</ul>
	</li>
<li><div class="div_icon">产品管理</div>
<ul style="margin-top:50px;">
	<li><a href="market_center.html"target="rightFrame">上架产品</a></li>
	<li><a  href="shop_dec.html" target="rightFrame">下架产品</a></li>


</ul>
</li>
<li><div class="div_icon">人事管理</div>
<ul style="margin-top:50px;">
	<li><a href="domain_manage.html" target="rightFrame">人员删除</a></li>
	<li><a href="money.jsp" target="rightFrame">人员增加</a></li>

</ul></li>
</ul>
</div>
<div class="left2"><div class="close_div"></div></div>
</div>

1123123123213213
</body>
</html>