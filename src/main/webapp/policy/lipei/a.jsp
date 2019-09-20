<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%
	String path = request.getContextPath();
	String basepath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	
%>
<!DOCTYPE html>

<html>
<head>
<meta charset="utf-8">
<base href="<%=basepath %>"/>
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<!-- <script type="text/javascript" src="js/jquery.js"></script> -->

<style type="text/css"> 
 label.error{font-size:12px;font-weight: normal;color:#ff0511;margin-left:10px;} 
</style>

<script type = "text/javascript"> 
$(function() { 
 $("#jvForm").validate({ 
  rules: { 
   username: { //用户名必填 至少3位 
    required: true, 
    minlength: 3 ,
    maxlength: 8
   }, 
   password: { //密码必填 至少6位 
    required: true, 
    minlength: 6 
   }, 
   confirm_password: { //密码确认 
    required: true, 
    equalTo: "#password"
   }, 
   address: { //出生地必填 
    required: true
   }, 
   mobile: { //手机必填 验证格式 
    required: true, 
    mobile: true
   }, 
   email: { //email必填 验证格式 
    required: true, 
    email: true
   }, 
  
  }, 
  messages: { 
   username: { 
    required: "用户名不能为空!", 
    minlength: "用户名至少三位!"
   }, 
   password: { 
    required: "密码不能为空!", 
    minlength: "密码至少六位!"
   }, 
   confirm_password: { 
    required: "密码确认不能为空!", 
    equalTo: "两次输入密码不一致 !"
   }, 
   address: { 
    required: "请选择出生地!", 
   }, 
   mobile: { 
    required: "手机不能为空!", 
    mobile: "手机格式不正确", 
   }, 
   email: { 
    required: "邮箱不能为空!", 
    email: "邮箱格式不正确", 
   }, 
  } 
 }); 
}) 
</script> 

<style>
.error{
	color:red;
}
</style>
</head>
<body>

<form action="" id="jvForm"> 
  用 户 名:<input type="text" name="username"/></br> 
  密 码:<input type="password" name="password" id="password"/></br> 
  确认密码:<input type="password" name="confirm_password"/></br> 
  出 生 地:<select name="address"><option value="">--</option><option value="1">北京</option> 
 <option value="1">上海</option><option value="1">深圳</option></select></br> 
  手 机:<input type="text" name="mobile" /></br> 
  邮 箱:<input type="text" name="email" /></br> 
  <input type="submit" value="提交" /> 
</form> 
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/messages_zh.js"></script>

</body>
</html>
