<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<% 
	String path=request.getContextPath();
	String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<title>网站后台管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">


<!--可无视-->
<link rel="stylesheet" href="../css/bootstrap.min.css">

<!--主要样式-->
<link type="text/css" href="../css/style.css" rel="stylesheet" />

<script>
if(self!=top)
{
	parent.location.href='index.html';
}
function CheckLogin(obj){
	if(obj.Auditor_account_number.value=='')
	{
		alert('请输入用户名');
		obj.Auditor_account_number.focus();
		return false;
	}
	if(obj.Auditor_pwd.value=='')
	{
		alert('请输入登录密码');
		obj.Auditor_pwd.focus();
		return false;
	}
	return true;
}

function logincheck(){
	//console.log($("#adminName").val());
	$.post("ac/login",{"Auditor_account_number":$("#Auditor_account_number").val(),"Auditor_pwd":$("#Auditor_pwd").val()},function(data){
		//console.log(data);
		if(data==null){
			$("#msg").html("用户名密码错误!");
		}else{
			location.href="/ac/findById";
		}
	},"json");
}
</script>


</head>
<body>

<div class="container" align="center">
	<div class="col-md-6" style="margin-top: 20%;">
		<div class="inset">
			<form name="login" id="login" method="get" action="/ac/findById" onSubmit="return CheckLogin(document.login);">
				<div>
					<h2>后台管理系统</h2>
					<span style="text-align: left;text-indent: 0.4em;"><label>邮箱</label></span>
					<span><input type="text"" name="Auditor_account_number" class="textbox" ></span>
				</div>
				<div>
					<span style="text-align: left;text-indent: 0.4em;"><label>密码</label></span>
					<span><input  name="Auditor_pwd" type="password" class="password"></span>
					<span id="msg"></span><br/>
				</div>
				<div class="sign">
					<input type="reset"  class="submit" value="重置"/>
					<input type="submit" value="登录" class="submit" onclick="logincheck();" />
				</div>
			</form>
		</div>
	</div>
</div>

<script>
if(document.login.equestion.value==0)
{
	showanswer.style.display='none';
}
</script>

</body>
</html>