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
<title>健康险</title>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/css/jquery.slideBox.css">
    <link rel="stylesheet" href="/css/book.css">
    <link rel="stylesheet" href="/css/easydropdown.css">
    <style type="text/css">
    .biaodan {
     margin-left: 46px;
    height:auto;
    padding-bottom: 28px;
    }
    .verificationBox .biaodan p{
    height:28px;
    font:16px/28px "Microsoft YaHei";
    color: #515151;
    margin-top: 20px;
    position: relative;
}
.verificationBox .biaodan p label{
    line-height:28px;
    width:102px;
    display: inline-block;
    float: left;
}
.verificationBox .biaodan p .input{
    height:26px;
    border:1px solid #c4c4c4;
    width:280px;
    border-radius: 5px;
    position: relative;
    display: inline-block;
    padding-left: 5px;
}
.verificationBox .biaodan p .center{
    text-align: center;
}
.verificationBox .biaodan p.birth_date select{
    width:68px;
}
.verificationBox .biaodan p.birth_date span{
    font-size: 12px;
    margin:0 6px;
}

	.jine{
	float: right;
	padding-right: 100px;
	padding-top: -50px;
	font-size: 19px;
	color: red; 
	background-color: #F8F4F4;
}
.error{
	color:red;
	
}

    </style>
    
   <script type="text/javascript">
   		
   </script>
</head>
<body>
<jsp:include page="/houtaitouwei/top.jsp"></jsp:include>
<jsp:include page="/houtaitouwei/left.jsp"></jsp:include>
<div id="div1" style="margin-left:300px; margin-top:50px;">
 <div class="book_box">
            <div class="verificationBox">
                <h2>健康险理赔
                    <span>(注:只针对健康险理赔)</span>
                    
                </h2>
                 <div class="biaodan">
                <p>
                        <label for="">保单编号</label>
                        <input type="text" id="baodan" name="baodan" class="input" placeholder="输入保单编号">
                    </p>
                <p>
                        <label for="recognizeeName">用药费</label>
                        <input type="text" class="input" placeholder="药费" id="">
                    </p>
                    <p>
                        <label for="">床位费</label>
                        <input type="text" class="input" placeholder="床位费">
                    </p>
                     <p>
                        <label for="">住院膳食</label>
                        <input type="text" class="input" placeholder="住院膳食费">
                    </p>
                     <p>
                        <label for="">护理费</label>
                        <input type="text" class="input" placeholder="护理费">
                    </p>
                     <p>
                        <label for="">门诊费</label>
                        <input type="text" class="input" placeholder="门诊费">
                    </p>
                     <p>
                        <label for="">救护车使用费</label>
                        <input type="text" class="input" placeholder="救护车使用费">
                    </p>
                     <p>
                        <label for="">医疗费</label>
                        <input type="text" class="input" placeholder="医疗费">
                    </p>
                     <p>
                        <label for="">检查费</label>
                        <input type="text" class="input" placeholder="检查费">
                    </p>
                     <p>
                        <label for="">手术费</label>
                        <input type="text" class="input" placeholder="手术费">
                    </p>
                    <input type="button" class="subBtn" value="查看">
                   </div>
                    <div class="jine">
                    <label>应该理赔的金额为:</label><label id="qian"></label>
                    </div>
                </div>
                </div>
</div>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/messages_zh.js"></script>
</body>
</html>