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
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<link rel="stylesheet" href="/css/common.css">
    <link rel="stylesheet" href="/css/index.css">
    <link rel="stylesheet" href="/css/jquery.slideBox.css">
    <link rel="stylesheet" href="/css/book.css">
    <link rel="stylesheet" href="/css/easydropdown.css">
    <style type="text/css">
    .error{
	color:red;
	font-size: 12px;
	
}
    </style>
    <script type = "text/javascript"> 
$(function(){
 $("#dform").validate({ 
  rules: { 
	  applyname:{
		  required: true
	  },
	  bankdeposit:{
		  required: true
	  },
	  bankname:{
		  required: true
	  },
	  banknum: { //用户名必填 至少3位 
    required: true, 
    minlength: 16 ,
    maxlength: 19,
    digits:true
   }, 
   applyphone: { //密码必填 至少6位 
    required: true, 
    minlength: 7 ,
    maxlength: 11,
    digits:true
   }, 
   yizhen:{
		  required: true
	  },
	  yizhen1:{
		  required: true
	  },
	  yizhen2:{
		  required: true
	  },
	  yizhen3:{
		  required: true
	  },
  }, 
  messages: { 
	  applyname:{
		  required: "不能为空"
	  },
	  bankdeposit:{
		  required: "不能为空"
	  },
	  bankname:{
		  required: "不能为空"
	  },
	  banknum: { 
    required: "不能为空!", 
    minlength: "输入格式不对",
    digits:"只能输入数字"
   }, 
   applyphone: { 
    required: "不能为空!", 
    minlength: "输入格式不对",
    digits:"只能输入数字"
   }, 
   yizhen:{
		  required: "必须上传相关证明"
	  },
	  yizhen1:{
		  required: "必须上传相关证明"
	  },
	  yizhen2:{
		  required: "必须上传相关证明"
	  },
	  yizhen3:{
		  required: "必须上传相关证明"
	  },
  } 
 }); 
})
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
                <form action="" method="post" enctype="multipart/form-data" id="dform" >
                    <p>
                        <label for="recognizeeName">申请人姓名</label>
                        <input type="text" class="input" id="applyname" name="applyname" placeholder="请填写真实姓名" />
                    </p>
                    <p>
                        <label for="recognizeeName">与被保人关系</label>
                        <select name="relationship" id="relationship" class="dropdown papers">
                            <option value="父子">父子</option>
                            <option value="姐妹">姐妹</option>
                            <option value="兄弟">兄弟</option>
                            <option value="其他">其他</option>
                        </select>
                    </p>
                    <p>
                        <label>开户银行</label>
                        <input type="text" id="bankdeposit" name="bankdeposit" class="input" placeholder="请仔细填写" />
                    </p>
                    <p>
                        <label for="">户名</label>
                        <input type="text" id="bankname" name="bankname" class="input" placeholder="银行卡持有者姓名" />
                    </p>
                     <p>
                        <label for="">卡号</label>
                        <input type="text" id="banknum" name="banknum" class="input" placeholder="银行卡号" />
                    </p>
                    <p>
                        <label for="">手机号码</label>
                        <input type="text" id="applyphone" name="applyphone" class="input" placeholder="用于接收理赔信息" />
                    </p>
                    <p><label>上传医诊证明:</label> 
                    <input type="file" class="input" id="yizhen" name="yizhen" />
                    </p>
                    <p><label>医疗费用收据:</label> 
                    <input type="file" class="input" id="yizhen1" name="yizhen1" />
                    </p>
                    <p><label>治疗费用证明:</label> 
                    <input type="file" class="input" id="yizhen2" name="yizhen2" />
                    </p>
                    <p><label>存折首页证明:</label> 
                    <input type="file" class="input" id="yizhen3" name="yizhen3" />
                    </p>
                    <p> <label>最多上传4张</label> 
                    
                    </p>
                    <input type="submit" class="subBtn" value="提交">
                </form>
            </div>
            </div>
</div>
<jsp:include page="/touwei/end.jsp" /> 
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<script type="text/javascript" src="js/messages_zh.js"></script>



</body>
</html>