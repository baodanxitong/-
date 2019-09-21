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
<head>
<base href="<%=basepath %>">
    <meta charset="utf-8">

    <meta name="viewport" content="initial-scale=1.0, maximum-scale=2.0">
    <title>个人中心</title>
    <link rel="stylesheet" href="css/bootstrap4alpha.css"/>
    <link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="css/buttons.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="css/shCore.css">
    <link rel="stylesheet" type="text/css" href="css/demo.css">
    
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/index.css">
    <link rel="stylesheet" href="css/jquery.slideBox.css">
    <style type="text/css" class="init">
        .right{
            font-size: 25px;
        }
        #light{
            width: 527px;
            float: left;
        }
        #Blight{
            background-color: #c8e5bc;
            float: right;
            
        }
        #example > thead > tr > th {
            text-align: center;
        }
    </style>
    <script src="js/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
    <script type="text/javascript" language="javascript" src="js/dataTables.bootstrap4.js"></script>
    <script type="text/javascript" language="javascript" src="js/dataTables.buttons.js"></script>
    <script type="text/javascript" language="javascript" src="js/buttons.bootstrap4.js"></script>
    <script type="text/javascript" src="js/jszip.js"></script>
   
    <script type="text/javascript" language="javascript" class="init">
    	var dataTable;
        $(document).ready(function() {
					var columName = [{"data":"投保人"},{"data":"被保人"},{"data":"产品名称"},{"data":"价格"},{"data":"保单生效时间"},{"data":"点击查看详情"}];
			        for(var i =0;i<columName.length; i++){
			        	$("#example thead tr").append("<th>"+columName[i].data+"</th>");
			        }
			        var table = $('#example').DataTable( {
		                ordering: false,//是否启用排序
		                searching: true,//搜索
		                language: {
		                    lengthMenu: '每页显示多少行： <select style="height: 35px;width: 100px">'+
		                    '<option value="5">5</option>'+
		                    '<option value="10">10</option>'+
		                    '<option value="20">20</option>'+
		                    '<option value="30">30</option>'+
		                    '<option value="40">40</option>'+
		                    '<option value="50">50</option>'+
		                    '<option value="-1">不限</option>'+
		                    '</select>',
		                    search: '<span class="label label-success">搜索：</span>',//右上角的搜索文本，可以写html标签
		
		                    paginate: {//分页的样式内容。
		                        previous: "上一页",
		                        next: "下一页",
		                        first: "第一页",
		                        last: "最后"
		                    },
		                    zeroRecords: "没有内容",//table tbody内容为空时，tbody的内容。
		                    //下面三者构成了总体的左下角的内容。
		                    info: "总共_PAGES_ 页，显示第_START_ 到第 _END_ ，筛选之后得到 _TOTAL_ 条，初始_MAX_ 条 ",//左下角的信息显示，大写的词为关键字。
		                    infoEmpty: "0条记录",//筛选为空时左下角的显示。
		                    infoFiltered: ""//筛选之后的左下角筛选提示，
		                },
		                paging:true,
		                pagingType: "full_numbers",//分页样式的类型
		                data: dataTable,
		                lengthChange: true,
		                columns:columName,
		                'dom': '<"left"f>r<"right"<"#light"l><"Blight"B>>tip',
		                buttons: [ 'excel'],
		                createdRow : function ( row, data, index ) {
		                    $('td', row).css('font-weight',"bold").css("text-align","center");
		                },
		
		          } );
//			    },
//         	}); 
		var date = getUrlParamById('date');
        var pay_time = JSON.stringify(date);
        alert(pay_time);
        } );
        
        $(function(){
    		$("#geren").css("padding-bottom","0");
    		$("#geren").css("border-bottom","2px solid #ff6700");
    	});
    </script>
<style type="text/css">
/*reset*/
input, textarea, select {
    font-size: 100%;
    font-family: inherit;
}

body, h1, h2, h3, h4, h5, h6, p, ul, ol, form {
    margin: 0;
}
em,i{
    font-style: normal;
}
/*h4, h5, h6 {*/
    /*font-size: 1em;*/
/*}*/

h1,h2,h3,h4,h5,h6{
    font-size: 100%;
    font-weight: normal;
}
ul, ol {
    padding-left: 0;
    list-style-type: none;
}
a{
    text-decoration: none;
    color: #333;
}
table{
    border-collapse: collapse;
    border-spacing: 0;
}

/*image with no-border*/
a img{
    border:0;
    display: block;
}

img {
    border: 0;
}

.fix{
    zoom: 1;
}
.fix:after{
    display: block;
    content: 'clear';
    clear: both;
    line-height:0;
    visibility: hidden;
}
.fs16{
    font-size: 16px;
}

/*閫氱敤鏍峰紡*/
body {
    line-height: 1.4;
    color: #333;
    font-family: "Microsoft YaHei", sans-serif;
    font-size: 12px;
    background: #ffffff;
}
.fl{
    float: left;
}
.fr{
    float: right;
}
.wrapper{
    width:100%;
    min-width: 1200px;
}
.main_width{
    width: 1200px;
    margin:0 auto;
}
/*header_user*/
.header_user{
    height: 27px;
    line-height:27px;
    overflow: hidden;
    color: #999;
    background: #fafafa;
    border-bottom:1px solid #d9d9d9;
}
.header_user span{
    height:27px;
    display: inline-block;
    color: #999;
    font-size: 12px;
}
.header_user a{
    color: #999;
}
.header_user .tel{
    padding-left: 24px;
    background: url("../images/header-icon.png") no-repeat 0 7px;
}
.header_user .register{
    padding-left: 16px;
    background: url("../images/header-icon.png") no-repeat 0 -34px;
}
.header_user .my_insurance{
    padding: 0 24px 0 18px;
    background: url("../images/header-icon.png") no-repeat 0 -72px;
}
.header_user .Backlog{
    padding: 0 24px 0 18px;
    background: url("../images/header-icon.png") no-repeat 0 -114px;
}
.header_user .message{
    padding: 0 24px 0 18px;
    background: url("../images/header-icon.png") no-repeat 0 -235px;
}
.header_user span em{
    color: #fea526;
    font-weight: bold;
    margin:0 3px;
    font-family: "瀹嬩綋",sans-serif;
}
.header_user .fg{
    padding: 0 8px;
}
/*header_nav*/
.header_nav{
    height: 110px;
    border-bottom: 2px solid #ff6700;
    background: #fff;
}
.header_nav .logo{
    width:370px;
    height:100px;
    overflow: hidden;
    display: block;
    background: url("../images/list_imgs/logo.png") no-repeat center;
    text-indent: -9999px;
}
.header_nav .my_policy{
    width: 80px;
    height:34px;
    line-height: 34px;
    font-size: 16px;
    color: #4e1600;
    padding-left: 44px;
    margin:40px 0 0 30px;
    background: url("../images/header-icon.png") no-repeat 16px -151px #ffe933;
}
.header_nav .menuBox{
    height:34px;
    padding-top: 44px;
    margin-left: 370px;
    text-align: center;
    overflow: hidden;
}
.header_nav .menu{
    display: inline-block;
}
.header_nav .menu li{
    float: left;
    position: relative;
    z-index: 10;
    padding-left: 50px;
}
.header_nav .menu li a{
    height:28px;
    line-height: 28px;
    display: inline-block;
    text-align: center;
    overflow: hidden;
    font-size: 16px;
    color: #555;
}
.header_nav .menu li.active a,
.header_nav .menu li a:hover{
    padding-bottom: 0;
    border-bottom: 2px solid #ff6700;
    text-decoration: none;
}
.header_nav .menu li.special a{
    padding-left: 24px;
    background: url("../images/header-icon.png") no-repeat 0 -195px;
}

.floor_main{
    position: relative;
    z-index: 1;
    width:100%;
    height: 420px;
    margin-bottom: 20px;
}
.menu_box{
    position: absolute;
    top:0;
    left:50%;
    z-index:3;
    margin-left: -596px;
    margin-top: 10px;
    width:220px;
    height:400px;
    background: #ffffff;
}
.menu_box .menu_main{
    position: relative;
    z-index:2;
    width:100%;
    height:100%;
    border-right: 1px solid #e4e4e4;
    box-sizing: border-box;
}
.menu_box .menu_main .sort{
    position: relative;
    z-index: 0;
    width: 219px;
    height:65px;
    padding: 1px 0;
    border-right: 1px solid #e4e4e4;
    overflow: hidden;
    cursor: default;
    background-color: #fff;
    margin-top: -1px;
}
.menu_box .menu_main .sort .content{
    width:165px;
    height:65px;
    padding-left: 15px;
    margin-left: 15px;
    margin-top: -1px;
    border-top: 1px solid #f2f2f2;
    border-bottom: 1px solid #f2f2f2;
}
.menu_box .menu_main .sort .content a.a1{
    background-image: url("../images/a1.png");
}
.menu_box .menu_main .sort .content a.a2{
    background-image: url("../images/a2.png");
}
.menu_box .menu_main .sort .content a.a3{
    background-image: url("../images/a3.png");
}
.menu_box .menu_main .sort .content a.a4{
    background-image: url("../images/a4.png");
}
.menu_box .menu_main .sort .content a.a5{
    background-image: url("../images/a5.png");
}
.menu_box .menu_main .sort .content a.a6{
    background-image: url("../images/a6.png");
}
.menu_box .menu_main .sort .content a{
    position: relative;
    line-height:68px;
    font-size: 16px;
    color: #333;
    padding-left: 30px;
    display: block;
    background-position: 0 center;
    background-repeat: no-repeat;
}
.menu_box .menu_main .sort .rightIcon{
    position: absolute;
    right:0;
    top:50%;
    width:8px;
    height:12px;
    margin-top: -6px;
    display: inline-block;
    overflow: hidden;
    background: url("../images/litter-icon.png") no-repeat 0 -250px;
    text-indent: -9999px;
}
.menu_box .menu_main .sort.active,
.menu_box .menu_main .sort.active_s {
    z-index: 1;
    padding: 0;
    border-width: 1px 1px 1px 0;
    border-style: solid;
}
.menu_box .menu_main .sort.active h2,
.menu_box .menu_main .sort.active_s h2,
.menu_box .menu_main .sort.active .t,
.menu_box .menu_main .sort.active_s .t {
    color: #fd6a22;
    padding-left: 45px;
}
.menu_box .menu_main .sort.active .rightIcon,
.menu_box .menu_main .sort.active_s .rightIcon {
    background-position: 0 -300px;
    right: -15px;
}
.menu_box .menu_main .sort.active {
    border-color: #e4e4e4 #ffffff;
}
.menu_box .menu_main .sort.active_s {
    border-color: #e4e4e4;
}
.menu_box .menu_main .sort05 {
    height: 69px;
}
.menu_box .menu_main .sort05 .con {
    height: 69px;
}
.menu_box .menu_main .sort05 .con .t {
    color: #ff5051;
    line-height: 69px;
}
.menu_box .menu_sub{
    position: absolute;
    top: -1px;
    left:220px;
    z-index: 3;
    width:490px;
    height:401px;
    background-color: #ffffff;
    overflow: hidden;
    display: none;
}
.menu_box .menu_sub .submenu{
    position: relative;
    display: none;
    width: 450px;
    height:360px;
    overflow: hidden;
    padding: 20px;
    background-position: bottom right;
    background-repeat: no-repeat;
}
.menu_box .menu_sub .submenu.sub01{
    background-image: url("../images/sub01.jpg");
}
.menu_box .menu_sub .submenu.sub02{
    background-image: url("../images/sub02.jpg");
}
.menu_box .menu_sub .submenu.sub03{
    background-image: url("../images/sub03.jpg");
}
.menu_box .menu_sub .submenu.sub04{
    background-image: url("../images/sub04.jpg");
}
.menu_box .menu_sub .submenu.sub05{
    background-image: url("../images/sub05.jpg");
}
.menu_box .menu_sub .submenu.sub06{
    background-image: url("../images/sub06.jpg");
}
.menu_box .menu_sub .tit{
    line-height: 32px;
    font-size: 18px;
    color: #333;
    border-bottom: 1px solid #000;
    padding: 0 15px;
}
.menu_box .menu_sub .submenu_list{
    padding: 14px 0;
    overflow: hidden;
}
.menu_box .menu_sub .submenu_list li{
    float: left;
    margin-left: -1px;
    padding-bottom: 5px;
}
.menu_box .menu_sub .submenu_list li a{
    height: 18px;
    line-height: 18px;
    padding: 0 14px;
    border-left: 1px solid #cfcfcf;
    display: block;
    font-size: 14px;
}
.menu_box .menu_sub .submenu_list li a:hover{
     color: #ff6700; 
}
.menu_box .menu_sub .submenu_all{
    position: absolute;
    bottom:0;
    left: 30px;
    width:100%;
    padding: 25px 0;
}
.menu_box .menu_sub .submenu_all h3{
    line-height:36px;
    font-size: 30px;
    color: #333;
    padding-bottom: 10px;
}
.menu_box .menu_sub .submenu_all p{
    color: #595959;
}
.menu_box .menu_sub .submenu_all p em{
    font-size: 36px;
    color: #f2574f;
    font-style: normal;
}
.menu_box .menu_sub .submenu_all a.btn,
.menu_box .menu_sub .submenu_all a.btn:hover {
    width: 108px;
    height: 36px;
    line-height: 36px;
    text-align: center;
    /* border: 1px solid #000000; */
    border-radius: 6px;
    display: block;
    margin-top: 20px;
    color: #000000;
}
.menu_box .menu_sub .submenu_all .all-link {
    position: absolute;
    top: 0;
    left: 0;
    z-index: 1;
    width: 100%;
    height: 100%;
    display: block;
}
/*杞挱*/
.scroll_box{
    position: relative;
}
.scroll_box .lists{
    height: 420px;
    overflow: hidden;
}
.scroll_box .lists li{
    float: left;
}
.scroll_box .lists li img{
    max-width:100%;
    height: 420px;
}
.scroll_box .items{
    font-size: 0;
    position: absolute;
    bottom: 8px;
    left:50%;
}
.scroll_box .items li{
    display: inline-block;
    width:12px;
    height:12px;
    border-radius: 50%;
    background-color: #cccccc;
    margin:0 3px;
}
.scroll_box .items li.active{
    background-color: #f00;
}
/*container*/
.container{
    position: relative;
}
/*鐑崠鎺ㄨ崘*/
.container .hot{
    padding-top: 40px;
    width:100%;
    margin:auto;
}
.container .hot .hot_title{
    padding-bottom: 35px;
    text-align: center;
}
.container .hot .hot_title .le_t{
    display: inline-block;
    width: 101px;
    height:7px;
    background: url("../images/left.png") no-repeat left center;
    position: relative;
    top: -1px;
}
.container .hot .hot_title .ri_t{
    display: inline-block;
    width: 101px;
    height:7px;
    background: url("../images/right.png") no-repeat left center;
    position: relative;
    top: -1px;
}
.container .hot .hot_title .hot_text{
    font-size: 20px;
    font-weight: 700;
    margin:0 23px;
    color: #323232;
}
.container .hot .hot_title .hot_text .dian{
    margin:0 5px;
    font-size: 24px;
    font-weight: 400;
}
.container .hot .hot_title .hot_text .eng{
    font-weight: 400;
    font-size: 14px;
}
/*footer*/
.copyright{
    background: #323232;
    height:85px;
    padding-top: 20px;
    padding-bottom: 15px;
}
.footer{
    position: relative;
}
.footer_nav{
    color: #b3b5ba;
    font-family: Arial,'\5B8B\4F53',sans-serif;
    position: absolute;
    left:0;
    top: 15px;
}
.footer_nav p{
    margin-bottom: 14px;
}
.footer_nav a{
    color: #b3b5ba;
}
.footer_nav .divider{
    margin:0 10px;
    color: #5a606e;
}
.footer_contact{
    color: #b3b5ba;
    width:450px;
    position: absolute;
    top:2px;
    right:0;
}
.footer_contact .f_contact_time{
        font-size: 16px;
    margin-bottom: 6px;
    color: #d0d0d0;
}
.footer_contact .f_contact_time span{
    font-size: 12px;
}
.footer_contact .f_contact_content{
    overflow: hidden;
    padding-top: 5px;
}
.footer_contact .f_contact_content .f_cc_left{
    margin-right: 20px;
}
.footer_contact .f_contact_content .f_cc_left, .footer_contact .f_contact_content .f_cc_mid, .footer_contact .f_contact_content .f_cc_right{
    height: 44px;
    float: left;
}
.footer_contact .f_contact_content .f_cc_mid, .footer_contact .f_contact_content .f_cc_right{
    padding: 0 20px;
    border-left: 1px solid #5a606e;
}
.footer_contact .f_contact_content .f_cc_item{
    display: block;
    font-size: 14px;
    line-height: 20px;
    margin-bottom: 5px;
    color: #8d8d8d;
}
.footer_contact .f_contact_content .f_cc_link{
    display: block;
    font-size: 14px;
    line-height:20px;
    margin-bottom: 5px;
    padding-left:25px;
    background: url("../images/service.png") no-repeat;
    opacity:6;
    filter:alpha(opacity=60);
    color: #f3f3f3;
}
.footer_contact .f_contact_content .f_cc_link.item_JIMI{
    background-position: 0 -2px;
}
.footer_contact .f_contact_content .f_cc_link.item_kefu{
    background-position: 0 -39px;
}
.footer_contact .f_contact_content .f_cc_link.item_mail{
    background-position: 0 -73px;
}
.sideBar{
    width:50%;
    position: fixed;
    left:50%;
    margin-left: 620px;
    bottom:20px;
    display: block;
    z-index: 1000;
}
.sideBar a.slider_block{
    width:40px;
    height:40px;
    border-radius: 3px;
    margin-top: 2px;
    display: block;
    position: relative;
    background: url("../images/sidebar.gif") -9999px -9999px no-repeat #ea544a;
    transition: all .2s;
}
.sideBar a.app{
    background-position: -168px 0;
}
.sideBar a.app:hover {
    background-position: -168px -40px;
}
.sideBar a.jimi{
    background-position: -336px 0;
}
.sideBar a.jimi:hover{
    background-position: -336px -40px;
}
.sideBar a.feedback{
    background-position: 0 0;
}
.sideBar a.feedback:hover{
    background-position: 0 -40px;
}
.sideBar a.backtop{
    background-position: -42px 0;
}
.sideBar a.backtop:hover{
    background-position: -42px -40px;
}

</style>
</head>
<body>

<div style="width: 100%; min-width: 1200px;background-color: red;display: block;">
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
</div>
<!---------------------------------------头用户结束-------------------------------------->
	<div class="header_nav">
        <div style="width: 320px;height: 105px;float: left; margin-left: 185px"><img src="/images/list_imgs/logo.png"/></div>
        <div style="height: 32px;width: 424px;margin-left: 750px;">
		        <ul class="menu" style="margin-top: 65px">
                    <li id="subscript0" class=""><a id="shouye" href="ma/index">首页</a></li>
                    <!-- special -->
                    <li id="subscript1" class=""><a >保险产品</a></li>
                    <li id="subscript2" class=""><a id="geren" style="padding-bottom:0;border-bottom:2px solid #ff6700;">个人中心</a></li>
                    <li id="subscript3" class=""><a>关于我们</a></li>
                </ul>
        </div>
    </div>

	<div class="container" style="height: 450px">
	    <section>
	        <div class="panel panel-default">
	            <div class="panel-body">
	                <table id="example" class="table table-bordered table-striped table-hover">
	                    <thead>
	                    <tr id="table_tr"></tr>
	                    </thead>
						<tbody>
						<c:forEach items="${infolist }" var="il">
							<tr>
								<td>${il.toubao_name }</td>
								<td>${il.beibao_name }</td>
								<td>${il.product_name }</td>
								<td>${il.price }</td>
								<td>
									<fmt:formatDate value="${il.start_date }" pattern="yyyy年-MM月-dd日"/>
								</td>
								<%-- <td>${il.start_date }</td> --%>
								<td><a href="cc/jump">详情</a></td>
							</tr>
						</c:forEach> 
							
							
					</tbody>
	                </table>
	            </div>
	        </div>
	    </section>
	</div>


<div class="wrapper">
		<div class="copyright" style="height: 180px">
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
	                <p>Copyright © 2004-2016 民乐ML.com 版权所有</p>
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


</body>
</html>