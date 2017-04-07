<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html lang="en">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<meta charset="UTF-8">
		<title>部长</title>
		<script src="js/jquery-1.11.3.js"></script>
		<script src="js/bootstrap.js"></script>
		<link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
	</head>

	<body>
		<div class="row">
			<div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
				<div class="container">
					<div id="pa" class="panel-group" style="width: 130px">
						<div class="panel panel-warning">
							<div class="panel-heading">
								<h3 class="panel-title text-center" data-toggle="collapse"
									data-target="#p3" data-parent="#pa">
									今日办公任务
								</h3>
							</div>
							<div id="p3" class="panel-collapse collapse">
								<div class="panel-body text-center">
									<a href="man/all.do" target="right">所有审批</a>
								</div>
								<div class="panel-body text-center">
									<a
										href="">未审批</a>
								</div>
								<div class="panel-body text-center">
									<a
										href="">已审批</a>
								</div>
							</div>
						</div>
						<div class="panel panel-success">
							<div class="panel-heading">
								<h3 class="panel-title text-center" data-toggle="collapse"
									data-target="#p4" data-parent="#pa">
									任务管理
								</h3>
							</div>
							<div id="p4" class="panel-collapse collapse">
								<div class="panel-body text-center">
									<a
										href="man/add.do" target="right">发布任务</a>
								</div>
								<div class="panel-body text-center">
									<a
										href="">已完成任务</a>
								</div>
								<div class="panel-body text-center">
									<a
										href="">未完成任务</a>
								</div>
							</div>

						</div>
					</div>
				</div>
			</div>
		</div>

	</body>
</html>
