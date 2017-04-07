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
		<title>我的假期</title>

		<link href="css/bootstrap.css" rel="stylesheet" />
		<script src="js/jquery-1.11.3.js"></script>
		<script src="js/bootstrap.js"></script>
	</head>
	<body>
		<table class="table table-striped table-bordered table-hover text-center">

			<thead>
				<tr>
					<th>
						编号
					</th>
					<th>
						请假事由
					</th>
					<th>
						开始时间
					</th>
					<th>
						结束时间
					</th>
					<th>
						状态
					</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${hb}" var="h">
				<tr>
					<td>
						${h.id}
					</td>
					<td>
						${h.desc}
					</td>
					<td>
						${h.starttime}
					</td>
					<td>
						${h.endtime}
					</td>
					<td>
						${h.status.desc}
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
	</body>
</html>