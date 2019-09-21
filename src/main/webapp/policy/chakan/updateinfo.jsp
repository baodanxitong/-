<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path=request.getContextPath();
	String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<script src="/backstage/js/jquery.js"></script>
<script src="/backstage/js/eye_all.js"></script>

<script>
$(function(){
	$(".left1 ul li").hover(function(){
		$(this).addClass("left1_li_hover");
		$(this).find("ul").show();
		$(this).siblings().find("ul").hide();
		
		},function(){
			$(this).removeClass("left1_li_hover");
			})
	})
	
	
</script>
<script type="text/javascript">
function goinfo(){
	window.location.href="/cc/yewuyuan";
		
	}
</script>

<head>
<meta charset="UTF-8">
<base href="<%=basepath%>">
<title>保单修改</title>
<link rel="stylesheet" href="css/book.css">
</head>
<body>
		<jsp:include page="top.jsp"></jsp:include>
		<jsp:include page="left.jsp"></jsp:include>
		<!-- 左边两个div的宽度为250px -->
		<div style="width: 800px;height: 500px;margin:25px 425px">
			<div class="book_box">
            <div class="verificationBox">
                <h2>保单详情</h2>
                <form action="upinfo" method="post" enctype="multipart/form-data" id="dform" >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">产品名称:</label>
                        <input type="text" class="input" id="applyname" name="applyname"  readonly="readonly"/>
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">投保人姓名:</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" />
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">投保人身份证号码:</label>
                        <input type="text" class="input" id="applyname" name="applyname"  readonly="readonly"/>
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">投保人手机号码:</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" />
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">投保人邮箱:</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" />
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">被保人名字:</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" />
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">投保人与被保人关系:</label>
                        <input type="text" class="input" id="applyname" name="applyname"  readonly="readonly"/>
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">被保人身份证号码:	</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" />
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">被保人手机号码:</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" />
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">受益人方式:</label>
                        <input type="text" class="input" id="applyname" name="applyname"  readonly="readonly"/>
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">保费:</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" />
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">保额:</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" />
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">保单生效起始日:</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" />
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">保单生效截止日:</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" />
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">保单状态:</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" />
                    </p >
                    
                </form>
                
            </div>
          </div>
			<div style="text-align: center;"><button style="width: 150px;height: 50px;background-color: #FF6F03;font-size: 20px;color: black;" onclick="goinfo()">返回</button></div>
		</div>
</body>
</html>