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
		<title>我的假期</title>

		<link href="css/bootstrap.css" rel="stylesheet" />
		<script src="js/jquery-1.11.3.js">
</script>
		<script src="js/bootstrap.js">
</script>
	</head>
	<body>
	<form action="em/holiday.do" method="post">
		<table class="table table-striped table-bordered table-hover text-center">

                        <tbody>
                        <tr>
                            <td>请假人：</td>
                            <td>${userbase.name}</td>
                        </tr>
                        <tr>
                            <td>请假时间：</td>
                            <td><input type="date" name="starttime">到 <input type="date" name="endtime"></td>
                        </tr>
                        <tr>
                            <td>请假事由</td>
                            <td><textarea name="desc" id="" cols="30" rows="5"></textarea></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="申请"></td>
                        </tr>
                        </tbody>
                    </table>
         </form>
	</body>
</html>