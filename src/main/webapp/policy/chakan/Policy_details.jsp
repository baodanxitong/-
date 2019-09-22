<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%
	String path=request.getContextPath();
	String basepath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<script type="text/javascript" src="/js/jquery-1.12.3.min.js"></script>
<script type="text/javascript">
	function b(){
		window.location.href="/cc/back";
	}
	function 朱旭伟(){
		window.location.href="/cc/upinfo";
	}
</script>
<script type="text/javascript">
function(){

	console.log($(document.documentElement).height());
	var heights=$(document).height();
	
	$(parent.document.getElementById("mainframe")).height(heights);
})


function gopage(myurl,menuid){
	//document.getElementById("mainframe").src = myurl;
	$("#mainframe").attr("src",myurl+"&menuid="+menuid);
}
function(){

	console.log($(document.documentElement).height());
	var heights=$(document).height();
	
	$(parent.document.getElementById("mainframe")).height(heights);
})


function gopage(myurl,menuid){
	//document.getElementById("mainframe").src = myurl;
	$("#mainframe").attr("src",myurl+"&menuid="+menuid);
}
</script>

<head>
<base href="<%=basepath %>">
    <meta charset="utf-8">
    <title>保单详情</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/jquery.slideBox.css">
    <link rel="stylesheet" href="css/book.css">
    
</head>

<body>
<div class="wrapper">
    <!--------------------------------------头用户开始------------------------------------->
    <div class="header_user">
        <div class="main_width">
            <span class="tel">客服电话：400-663-6600（周一至周六 9:00-18:00）</span>
            <span class="fr">
                <span class="my_insurance"><a href="#">我的保险</a></span>
                <span class="Backlog"><a href="#">未完成订单</a></span>
                <span class="message"><a href="#">消息</a></span>
                <span class="register"><a href="/ma/register">注册</a></span>
                <span class="fg"><a href="#">|</a></span>
                <span><a href="/ma/login">登录</a></span>
            </span>
        </div>
    </div>
    <!---------------------------------------头用户结束-------------------------------------->
	<div class="header_nav">
        <div class="main_width">
            <h1><a href="#" class="logo fl">民乐保险官网-互联网保险服务平台</a></h1>
            <!--<a href="#" class="my_policy fr">我的保单</a>-->
            <div class="menuBox">
                <ul class="menu">
                    <li class="${subscript0 }"><a href="/ma/main">首页</a></li>
                    <!-- special -->
                    <li class="${subscript1 }"><a href="">保险产品</a></li>
                    <li class="${subscript2 }"><a href="cc/back">个人中心</a></li>
                    <li class="${subscript3 }"><a href="#">关于我们</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>

<!-- 表格整体高度需要调整 -->
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
                    <p>
                        <label for="recognizeeName" style="width: 150px;margin-left: 150px">保单状态:</label>
                        <c:choose>
                        	<c:when test="${in.status==1 }">
                        		<input style="color: green;" type="text" class="input" id="applyname" name="applyname" readonly="readonly" value="有效期"/>
                        	</c:when>
                        	<c:when test="${in.status==0 }">
                        		<input style="color: red" type="text" class="input" id="applyname" name="applyname" readonly="readonly" value="已过期"/>
                        	</c:when>
                        </c:choose>
                        
                    </p >
                    <input type="button" class="subBtn" value="返回" onclick="b()">
                   
                    
                </form>
                
            </div>
          </div>


<div class="wrapper">
   

	<div class="copyright">
        <div class="main_width footer">
            <div class="footer_nav">
                <p>
                    <a href="#">关于民乐保险</a>
                    <span class="divider">|</span>
                    <a href="#">关于民乐小金库</a>
                    <span class="divider">|</span>
                    <a href="#">关于民乐钱包</a>
                    <span class="divider">|</span>
                    <a href="#">关于民乐白条</a>
                    <span class="divider">|</span>
                    <a href="#">联系我们</a>
                    <span class="divider">|</span>
                    <a href="#">免责声明</a>
                </p>
                <p>Copyright © 2004-2016 民乐ML.com 版权所有<span class="divider">|</span>投资有风险，购买需谨慎</p>
            </div>
            <div class="footer_contact">
                <div class="f_contact_time">
                    联系我们<span>（09:00-22:00）</span>
                </div>
                <div class="f_contact_content">
                    <div class="f_cc_left">
                        <span class="f_cc_item">个人业务：400-098-8511</span>
                        <span class="f_cc_item">企业业务：400-088-8816</span>
                    </div>
                    <div class="f_cc_mid">
                        <a href="#" class="f_cc_link item_JIMI">咨询ML</a>
                        <a href="#" class="f_cc_link item_kefu">在线客服</a>
                    </div>
                    <div class="f_cc_right">
                        <a href="#" class="f_cc_link item_mail">客服邮箱</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--页脚结束-->
</div>