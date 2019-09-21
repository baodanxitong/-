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
<title>意外险</title>
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
    width:152px;
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
    
    	function validform(){
            return $(".dform").validate({
    		 
    			  rules: { 
    				  baodanid: { //不能为空 
    				    required: true
    				   },   
    				   shanghai:{
    					   number:true
    				   },
    				   jingtie:{
    					   number:true
    				   },
    				   tian:{
    						digits:true,
    						max:90
    				   },
    				   yiliao:{
    					   number:true,
    					   required: true
    				   },
    			  },
    			  massger:{
    				  baodanid: { //不能为空 
      				    required: "订单编号不能为空"
      				   },   
      				   shanghai:{
      					   number:"金额必须为数字"
      				   },
      				   jingtie:{
      					   number:"金额必须为数字"
      				   },
      				   tian:{
      						digits:"金额必须为数字",
      						
      				   },
      				   yiliao:{
      					   number:"金额必须为数字"
      				   },
    			  }
    }); 
    	}
    	$(validform());
    	
    	function count(){
    		var shanghai=$("#shanghai").val();//意外伤害保险约定金额
    		var bili=$("#bili").val();//残疾比例
    		var jingtie=$("#jingtie").val();//意外津贴约定金额
    		var tian=$("#tian").val();//住院天数
    		var yiliao=$("#yiliao").val();//医疗约定金额
    		var sum=0;
    		console.log(shanghai);
    		console.log(yiliao);
    		if (validform().form()) {
    		 sum=shanghai*bili+jingtie*tian+(yiliao-100)*0.8;
    		}else{}
    		$("#qian").html(sum.toFixed(2));
    	}
    	
    </script>
</head>
<body>
<jsp:include page="/houtaitouwei/top.jsp"></jsp:include>
<jsp:include page="/houtaitouwei/left.jsp"></jsp:include>
<div id="div1" style="margin-left:300px; margin-top:50px;">
 <div class="book_box">
            <div class="verificationBox">
                <h2>意外险理赔
                    <span>(注:只针对意外险理赔)</span>
                    
                </h2>
                <form action="" class="dform">
                 <div class="biaodan">
                <p>
                        <label for="">保单编号</label>
                        <input type="text" id="baodanid" name="baodanid" value="" class="input" placeholder="输入保单编号" />
                    </p>
                <p>
                        <label for="recognizeeName">意外伤害保险:</label>
                        
                    </p>
                    <p>
                        <label for="">约定金额</label>
                        <input type="text" id="shanghai" name="shanghai" class="input" placeholder="约定金额">
                    </p>
                     <p>
                        <label for="">残疾比例</label>
                        <select name="papers" id="bili" class="dropdown papers">
                            <option value="0.1">10%</option>
                            <option value="0.2">20%</option>
                            <option value="0.3">30%</option>
                            <option value="0.4">40%</option>
                            <option value="0.5">50%</option>
                            <option value="0.6">60%</option>
                            <option value="0.7">70%</option>
                            <option value="0.8">80%</option>
                            <option value="0.9">90%</option>
                            <option value="1">100%</option>
                        </select>
                    </p>
                     <p>
                        <label for="">意外津贴医疗保险:</label>
                        
                    </p>
                     <p>
                        <label for="">约定金额</label>
                        <input type="text" id="jingtie" name="jingtie" class="input" placeholder="约定金额">
                    </p>
                     <p>
                        <label for="">住院天数</label>
                        <input type="text" id="tian" name="tian" class="input" placeholder="最多90天">
                    </p>
                     <p>
                        <label for="">意外伤害医疗:</label>
                       
                    </p>
                     <p>
                        <label for="">约定金额:</label>
                        <input type="text" id="yiliao" name="yiliao" class="input" placeholder="约定金额">
                    </p>
                    
                    <input type="button" class="subBtn" onclick="count()" value="查看">
                   </div>
                   </form>
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