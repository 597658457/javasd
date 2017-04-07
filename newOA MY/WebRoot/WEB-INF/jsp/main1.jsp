<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>网博后台</title>
	<link href="css/bootstrap.css" rel="stylesheet"/>
    <script src="js/jquery-1.11.3.js"></script>
    <script src="js/bootstrap.js"></script>
</head>

	<frameset rows="10%,*">
		<frame src="login/top.do"/>
		<frameset cols="13%,*">
			<frame src="login/left1.do"/>
			<frame name="right" src="login/right.do"/>
		</frameset>
	</frameset>


</html>