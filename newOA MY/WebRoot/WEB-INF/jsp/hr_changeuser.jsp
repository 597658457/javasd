<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta charset="UTF-8">
		<title>修改员工</title>

		<link href="css/bootstrap.css" rel="stylesheet" />
		<script src="js/jquery-1.11.3.js"></script>
		<script src="js/bootstrap.js"></script>
	</head>
	<body>
		<form action="login/change.do?id=${ubase.id}" method="post" onsubmit="javascript:return window.confirm('确认提交吗？')">
			<table class="table table-striped table-bordered table-hover text-center">

				<tbody>
				
					<tr>
						<td>
							帐号：
						</td>
						<td>
						${ubase.id}
						</td>
					</tr>
					<tr>
						<td>
							密码：
						</td>
						<td>
							<input type="text" name="pwd" value="${ubase.pwd}">
						</td>
					</tr>
					<tr>
						<td>
							姓名：
						</td>
						<td>
							<input type="text" name="name" value="${ubase.name}">
						</td>
					</tr>
					<tr>
						<td>
							性别：
						</td>
						<td>
							<c:if test="${ubase.sex=='男'}">
							<input type="radio" name="sex" value="男" checked>
							男
							<input type="radio" name="sex" value="女">
							女
							</c:if>
							<c:if test="${ubase.sex=='女'}">
							<input type="radio" name="sex" value="男">
							男
							<input type="radio" name="sex" value="女" checked>
							女
							</c:if>
						</td>
					</tr>
					<tr>
						<td>
							请选择部门：
						</td>
						<td>
							<select name="departmentid" id="">
								<option value="0">
									==请选择==
								</option>
								<c:if test="${ubase.departmentid==1}">
								<option value="1" selected>
									开发部一
								</option>
								<option value="2">
									开发部二
								</option>
								</c:if>
								<c:if test="${ubase.departmentid==2}">
								<option value="1">
									开发部一
								</option>
								<option value="2" selected>
									开发部二
								</option>
								</c:if>
							</select>
						</td>
					</tr>
					<tr>
						<td>
							角色：
						</td>
						<td>
						<input type="radio" name="roleid" value="3" checked/>员工
						</td>
					</tr>
					<tr>
						<td>
							入职时间：
						</td>
						<td>
							<input type="date" name="jobdate" value="${ubase.jobdate}">
						</td>
					</tr>
					<tr>
						<td></td>
						<td>
							<input type="submit">
						</td>
					</tr>
					
				</tbody>
			</table>
		</form>
	</body>
</html>