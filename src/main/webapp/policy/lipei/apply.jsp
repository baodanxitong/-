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
    <link rel="stylesheet" href="/css/book.css">
    <link rel="stylesheet" href="/css/easydropdown.css">
    <script type="text/javascript">
    $("#toubu").load("down.html");
    $("#weibu").load("top.html");
    </script>
</head>
<body>
<jsp:include page="/touwei/head.jsp" /> 
<div id="content">
 <!--投保信息输入-->
  <div class="book_box">
            <div class="verificationBox">
                <h2>填写理赔信息
                    <span>(请认真填写)</span>
                    <a href="#" class="resetMess">清空以下输入信息</a>
                </h2>
                <form action="#" method="post">
                    <p>
                        <label for="recognizeeName">申请人姓名</label>
                        <input type="text" class="input" placeholder="请填写真实姓名" id="recognizeeName">
                    </p>
                    <p>
                        <label for="recognizeeName">与被保人关系</label>
                        <select name="papers" id="" class="dropdown papers">
                            <option value="1">父子,母子</option>
                            <option value="2">姐妹</option>
                            <option value="3">兄弟</option>
                            <option value="4">其他</option>
                        </select>
                    </p>
                    <p>
                        <label>开户银行</label>
                        <input type="text" class="input" placeholder="请仔细填写">
                    </p>
                    <p>
                        <label for="">户名</label>
                        <input type="text" class="input" placeholder="银行卡持有者姓名">
                    </p>
                     <p>
                        <label for="">卡号</label>
                        <input type="text" class="input" placeholder="银行卡号">
                    </p>
                    <p>
                        <label for="">手机号码</label>
                        <input type="text" class="input" placeholder="用于接收理赔信息">
                    </p>
                    <p><label>上传医诊证明:</label> 
                    <input type="file" class="input" />
                   
                    </p>
                    <p> <label>上传辅助证明:</label> 
                    <input type="file" class="input" />
                    </p>
                     <p> <label>上传辅助证明:</label> 
                    <input type="file" class="input" />
                    </p>
                     <p> <label>上传辅助证明:</label> 
                    <input type="file" class="input" />
                    </p>
                    <p> <label>最多上传4张</label> 
                    
                    </p>
                    <input type="submit" class="subBtn" value="提交">
                </form>
            </div>
            </div>
</div>
<jsp:include page="/touwei/end.jsp" /> 
</body>
</html>