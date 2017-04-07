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
		<title>所有员工</title>
		<link href="css/bootstrap.css" rel="stylesheet"/>
    <script src="js/jquery-1.11.3.js"></script>
    <script src="js/bootstrap.js"></script>
		</head>
	<body>
		<table class="table table-striped table-bordered table-hover text-center">
			<thead>
				<tr>
					<th>
						帐号
					</th>
					<th>
						姓名
					</th>
					<th>
						入职时间
					</th>
					<th>
						性别
					</th>
					<th>
						所在部门
					</th>
					<th>
						操作
					</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${userlist}" var="u">
					<tr>
						<td>
							${u.id }
						</td>
						<td>
							${u.name }
						</td>
						<td>
							${u.jobdate }
						</td>
						<td>
							${u.sex }
						</td>
						<td>
							${u.department.desc }
						</td>
						<td>
<a href="javascript:if(confirm('亲,你确定要修改吗？')){location.href='login/alt.do?id=${u.id}'}">修改</a>
<a href="javascript:if(confirm('亲,你确定要删除吗？')){location.href='login/del.do?id=${u.id}'}">删除</a>			
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</body>
</html>