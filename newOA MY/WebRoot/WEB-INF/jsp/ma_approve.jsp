<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>  
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<base href="<%=basePath%>">
		<meta charset="UTF-8">
		<title>所有的审批</title>

		<link href="css/bootstrap.css" rel="stylesheet" />
		<script src="js/jquery-1.11.3.js">
</script>
		<script src="js/bootstrap.js">
</script>
    <script type="text/javascript">
   	function agree(id,obj){
   		$.ajax({
   			url:"maAjaxAction.do",
   			type:"get",
   			data:{tid:id,flag:"agree"},
   			success:function(msg){
   				if(msg==1){
   					$(obj).parent().prev().html("已同意");
   					$(obj).parent().html("");
   				}
   			},
   		//	error:function(obj){
 		//	alert("发生错误，请与部长联系")
 		//	},
   			
   		});
   	}
   	
   	   	function disagree(id,obj){
   		$.ajax({
   			url:"maAjaxAction.do",
   			type:"get",
   			data:{tid:id,flag:"disagree"},
   			success:function(msg){
   				if(msg==1){
   					$(obj).parent().prev().html("被拒绝");
   					$(obj).parent().html("");
   				}
   			},
   			//error:function(obj){
 		//	alert("发生错误，请与部长联系")
 			//},
   			
   		});
   	}
    
    </script>
	</head>
	<body>
		 <table class="table table-striped table-bordered table-hover text-center">

                        <thead>
                        <tr>
                            <th>编号</th>
                            <th>姓名</th>
                            <th>内容</th>
                            <th>开始时间</th>
                            <th>结束时间</th>
                            <th>状态</th>
                            <th>操作</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${approve}" var="a">
                        <tr>
                            <td>${a.id}</td>
                            <td>${a.userbase.name}</td>
                            <td>${a.desc}</td>
                            <td>${a.starttime}</td>
                            <td>${a.endtime}</td>
                            <td>${a.status.desc}</td>
                            <td>
							<c:if test="${a.status.desc=='审批中'}">
							<a href="#" onclick="agree('${a.id}',this)">同意</a> 
							<a href="#" onclick="disagree('${a.id}',this)">拒绝</a> 
							</c:if>
							</td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
	</body>
</html>