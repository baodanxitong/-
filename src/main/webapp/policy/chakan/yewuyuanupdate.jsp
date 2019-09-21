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
	
	function goinfo(){
		window.location.href="/cc/gotoinfo";
	}
</script>


<head>
<meta charset="UTF-8">
<base href="<%=basepath%>">
<title>保单详情</title>

<link rel="stylesheet" href="css/bootstrap4alpha.css"/>
    <link rel="stylesheet" type="text/css" href="css/dataTables.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="css/buttons.bootstrap4.css">
    <link rel="stylesheet" type="text/css" href="css/shCore.css">
    <link rel="stylesheet" type="text/css" href="css/demo.css">
    
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
/*        #example_info{ display:none;}*/
    </style>
    <script type="text/javascript" language="javascript" src="js/jquery-1.12.3.min.js"></script>
    <script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
    <script type="text/javascript" language="javascript" src="js/dataTables.bootstrap4.js"></script>
    <script type="text/javascript" language="javascript" src="js/dataTables.buttons.js"></script>
    <script type="text/javascript" language="javascript" src="js/buttons.bootstrap4.js"></script>
    <script type="text/javascript" src="js/jszip.js"></script>
    <script type="text/javascript" language="javascript" src="js/buttons.html5.js"></script>
    <script type="text/javascript" language="javascript" class="init">
    	var dataTable;
        $(document).ready(function() {
//      	$.ajax({
//	               type: "get",
//	               url: "body.json",
//	               success: function(data){
//				        dataTable =data;
//				    },
//	        });
//			$.ajax({
//               type: "get",
//               url: "head.json",
//               success: function(columName){
					var columName = [{"data":"投保人"},{"data":"被保人"},{"data":"保单生效时间"},{"data":"保单失效时间"},{"data":"保单价格"},{"data":"详情"}];
			        for(var i =0;i<columName.length; i++){
			        	$("#example thead tr").append("<th>"+columName[i].data+"</th>");
			        }
			        var table = $('#example').DataTable( {
		                ordering: false,//是否启用排序
		                searching: true,//搜索
		                language: {
		                    lengthMenu: '显示 <select style="height: 35px;width: 100px">'+
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
//						dom: 'Bfltip',
		                'dom': '<"left"f>r<"right"<"#light"l><"Blight"B>>tip',
//		                'excel', 'pdf', 'print','colvis','csv','copy'
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
    </script>
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
			<div style="text-align: center;"><button style="width: 150px;height: 50px;background-color: #FF6F03;font-size: 20px;color: black;" onclick="goinfo()">修改</button></div>
		</div>
</body>
</html>