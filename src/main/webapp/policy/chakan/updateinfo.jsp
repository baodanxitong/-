<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
function b(){
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
		<div class="book_box">
            <div class="verificationBox">
                <h2>保单详情</h2>
                <form action="upinfo" method="post" enctype="multipart/form-data" id="dform" >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">产品名称:</label>
                        <input type="text" class="input" id="applyname" name="applyname"  readonly="readonly" value="${in.product_name }"/>
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">投保人姓名:</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" value="${in.toubao_name } "/>
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">投保人身份证号码:</label>
                        <input type="text" class="input" id="applyname" name="applyname"  readonly="readonly" value="${in.toubao_id_card }"/>
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">投保人手机号码:</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" value="${in.toubao_phone }"/>
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">投保人邮箱:</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" value="${in.email }"/>
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">被保人名字:</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" value="${in.beibao_name }"/>
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">投保人与被保人关系:</label>
                        <input type="text" class="input" id="applyname" name="applyname"  readonly="readonly" value="${in.relation }"/>
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">被保人身份证号码:	</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" value="${in.beibao_id_card }"/>
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">被保人手机号码:</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" value="${in.beibao_phone }"/>
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">受益人方式:</label>
                        <input type="text" class="input" id="applyname" name="applyname"  readonly="readonly" value="${in.style }"/>
                    </p > 
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">保费:</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" value="${in.price }"/>
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">保额:</label>
                        <input type="text" class="input" id="applyname" name="applyname" readonly="readonly" value="${in.border }"/>
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">保单生效起始日:</label>
                        <fmt:formatDate value="${in.start_date }" pattern="yyyy年-MM月-dd日"/>
                    </p >
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">保单生效截止日:</label>
                        <fmt:formatDate value="${in.end_date }" pattern="yyyy年-MM月-dd日"/>
                    </p >
                    <%-- <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">保单状态:</label>
                        <c:choose>
                        	<c:when test="${in.status==1 }">
                        		<input style="color: green;" type="text" class="input" id="applyname" name="applyname" readonly="readonly" value="有效期"/>
                        	</c:when>
                        	<c:when test="${in.status==0 }">
                        		<input style="color: red" type="text" class="input" id="applyname" name="applyname" readonly="readonly" value="已过期"/>
                        	</c:when>
                        </c:choose>
                        
                    </p > --%>
                    <input type="button" class="subBtn" value="返回" onclick="b()">
                   
                    
                </form>
                
            </div>
          </div>
</body>
</html>