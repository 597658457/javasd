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
    <title>所有的任务</title>

    <link href="css/bootstrap.css" rel="stylesheet"/>
    <script src="js/jquery-1.11.3.js"></script>
    <script src="js/bootstrap.js"></script>
    <script>
   function done(id,obj){
   		if(confirm("确认完成么")){
   		$.ajax({
   			url:"em/doneCheck.do",
   			type:"get",
   			data:{tid:id,flag:"done"},
   			success:function(msg){
   				if(msg==1){
   					$(obj).parent().prev().html("已完成");
   					$(obj).parent().html("");
   				}
   			},
   			error:function(obj){
 			alert("发生错误，请与管理员联系")
 			},
   			
   		});
   		}
   	}
    </script>
</head>
<body>
  <table class="table table-striped table-bordered table-hover text-center">

                        <thead>
                        <tr>
                            <th>编号</th>
                            <th>内容</th>
                            <th>开始时间</th>
                            <th>结束时间</th>
                            <th>状态</th>
                            <th>操作</th>
                            <th>绩效</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${tblist}" var="t">
                        <tr>
                            <td>${t.id}</td>
                            <td>${t.name}</td>
                            <td>${t.starttime }</td>
                            <td>${t.endtime }</td>
                            <td>${t.status.desc}</td>
                            <td>
                            <c:if test="${t.status.desc=='开发中'}">             
                             <a href="javascript:void(0)" onclick="done('${t.id}',this)">完成</a>                      
                            </c:if>
                            </td>
                            <td>${t.money }</td>
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
</body>
</html>