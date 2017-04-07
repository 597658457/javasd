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
    <script type="text/javascript">
    function addMoney(id,obj){
    	$.ajax({
   			url:"maAddMoneyAction.do",
   			type:"get",
   			data:{tid:id,money:$(obj).val()},
   			success:function(msg){
   				if(msg==1){
   					$(obj).parent().html($(obj).val());
   				}
   			},
   		//	error:function(obj){
 			//alert("发生错误，请与管理员联系")
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
                            <th>绩效</th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${tasklist}" var="t">
                        <tr>
                            <td>${t.id}</td>
                            <td>${t.userbase.name}</td>
                            <td>${t.name}</td>
                            <td>${t.starttime }</td>
                            <td>${t.endtime }</td>
                            <td>${t.status.desc}</td>
                            <td><c:if test="${t.status.desc=='已完成'||t.status.desc=='已延迟'}">
                            <input name="money" class="form-control2" style="width:60px" type="text" onblur="addMoney('${t.id}',this)"/>
                            </c:if>
                            <c:if test="${t.money!=0}">
                            ${t.money}
                            </c:if>
                            </td>
                            
                            
                        </tr>
                        </c:forEach>
                        </tbody>
                    </table>
</body>
</html>