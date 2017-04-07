<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
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
		<form action="login/add.do" method="post" onsubmit="javascript:return window.confirm('确认提交吗？')">
			<table class="table table-striped table-bordered table-hover text-center">

				<tbody>
					<tr>
						<td>
							帐号：
						</td>
						<td>
							<input type="text" name="id">
						</td>
					</tr>
					<tr>
						<td>
							密码：
						</td>
						<td>
							<input type="password" name="pwd">
						</td>
					</tr>
					<tr>
						<td>
							姓名：
						</td>
						<td>
							<input type="text" name="name">
						</td>
					</tr>
					<tr>
						<td>
							性别：
						</td>
						<td>
							<input type="radio" name="sex" value="男" checked>
							男
							<input type="radio" name="sex" value="女">
							女
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
								<option value="1">
									开发部一
								</option>
								<option value="2">
									开发部二
								</option>
								
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
							<input type="date" name="jobdate">
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