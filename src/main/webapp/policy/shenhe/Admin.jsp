<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<% 
	String path=request.getContextPath();
	String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript">
function chuan(){
	var applyid=$("#applyid").val();
	var money=$("#money").val();
	window.location="/ac/insertBySettlement?applyid="+applyid+"&money="+money;
	
	
}
</script>
<title>Insert title here</title>
</head>
<body>

<table>
	<tr>
		<td>申请人姓名：${userapply.apply_name }</td>
	</tr>
	<tr>
		<td>申请人联系电话：${userapply.apply_phone }</td>
	</tr>
	<tr>
		<td>开户银行：${userapply.bank_deposit }</td>
	</tr>
	<tr>
		<td>银行账号：${userapply.bank_num }</td>
	</tr>
	<tr>
		<td>申请时间：${userapply.apply_date }</td>
	</tr>
	<tr>
		<td>就诊证明：${userapply.hospital_url }</td>
	</tr>
	<tr>
		<td>医院收据：${userapply.url_a }</td>
	</tr>
	<tr>
		<td>资料路径：${userapply.url_b }</td>
	</tr>
	<tr>
		<td>资料路径：${userapply.url_c }</td>
	</tr>
	<tr>
		<td>理赔状态：${userapply.settlementstate }</td>
	</tr>
	<tr>
		<td>
			理赔金额：<input type="text" id="money" name="money" />
			<input type="hidden" id="applyid" value="${userapply.applyid }" />
		</td>
	</tr>
	<tr>
		<td>
		
			<a href="javascripts(0);" onclick="chuan()">审核</a>
		</td>
	</tr>
</table>

</body>
</html>