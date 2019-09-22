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
<title>审核列表</title>
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>

<link rel="stylesheet" href="css/pagecommon.css">  
<link rel="stylesheet" href="css/pagination.css">
<script type="text/javascript">
window.onload = function () {
    //ajax请求数据长度
    $.post("app/ac",function (data) {
        //数据长度除以每页数据长度等于要显示的页数

        //***********************第一次展示****************************
        var str = "<table width=\"80%\" border=\"1\" align=\"center\">\n" +
            "  <tr>\n" +
            "    <td>申请姓名</td>\n" +
            "    <td>被保人关系</td>\n" +
            "    <td>联系电话</td>\n" +
            "    <td>审核时间</td>\n" +
            "    <td>审核状态</td>\n" +
            "    <td>操作</td>\n" +
            "  </tr>\n" ;
        for(var s=0;s<5&&s<data.length;s++){
        	if(data[s].settlementstate==1){
        		data[s].settlementstate='未处理';
        	}else if(data[s].settlementstate==2){
        		data[s].settlementstate='未通过';
        	}else {
        		data[s].settlementstate='已通过';
        	}
            str = str +" <tr>\n" +
                "    <td>"+data[s].applyname+"</td>\n" +
                "    <td>"+data[s].relationship+"</td>\n" +
                "    <td>"+data[s].applyphone+"</td>\n" +
                "    <td>"+data[s].applydate+"</td>\n" +
                "    <td>"+data[s].settlementstate+"</td>\n" +
                "    <td><a href=''>审核</a></td>\n" +
                "  </tr>"
        }
        str = str + "</table>"
        $("#write").html(str);
        //******************************写入分页按钮**************************8
        $("#box").pagination({

            totalPage:Math.ceil(data.length/5),
            showDate:5,
            homePage:'首页',
            endPage:'末页',
            prevCls:'上页',
            nextCls:'下页',
            callback:function (current) {
                console.log(current)
                //************************************88点击按钮执行对应得ajax*****************************888
                $.post("app/ac",
                    {"current":current},
                    function (data) {

                    //数据展示
                        var str = "<table width=\"80%\" border=\"1\" align=\"center\">\n" +
                        "  <tr>\n" +
                        "    <td>申请姓名</td>\n" +
                        "    <td>被保人关系</td>\n" +
                        "    <td>联系电话</td>\n" +
                        "    <td>审核时间</td>\n" +
                        "    <td>审核状态</td>\n" +
                        "    <td>操作</td>\n" +
                        "  </tr>\n" ;

                        for(var s=(current*5)-5;s<data.length&&s<current*5;s++){
                        	if(data[s].settlementstate==1){
                        		data[s].settlementstate='未处理';
                        	}else if(data[s].settlementstate==2){
                        		data[s].settlementstate='未通过';
                        	}else {
                        		data[s].settlementstate='已通过';
                        	}
                            str = str +" <tr>\n" +
                            "    <td>"+data[s].applyname+"</td>\n" +
                            "    <td>"+data[s].relationship+"</td>\n" +
                            "    <td>"+data[s].applyphone+"</td>\n" +
                            "    <td>"+data[s].applydate+"</td>\n" +
                            "    <td>"+data[s].settlementstate+"</td>\n" +
                            "    <td><a href=''>审核</a></td>\n" +
                            "  </tr>"
                        }
                        str = str + "</table>"
                        $("#write").html(str);
                })

            }
            }
        )

    });
}
</script>
</head>
<body>
<jsp:include page="/houtaitouwei/top.jsp"></jsp:include>
<jsp:include page="/houtaitouwei/left.jsp"></jsp:include>
<div id="div1" style="margin-left:300px; margin-top:50px;">
<div id="write"></div>
        <div id="box" class=" M-box"></div>
</div>
<script type="text/javascript" src="js/jquery.pagination.min.js"></script>
</body>
</html>