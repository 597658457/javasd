<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>所有的任务</title>

    <link href="css/bootstrap.css" rel="stylesheet"/>
    <script src="js/jquery-1.11.3.js"></script>
    <script src="js/bootstrap.js"></script>
</head>
<body>
		<form action="maAddTaskAction.do" method="post">
	                  <table class="table table-striped table-bordered table-hover text-center">

                        <tbody>
                        <tr>
                            <td>任务名称：</td>
                            <td><input type="text" name="name"></td>
                        </tr>
                        <tr>
                            <td>任务描述：</td>
                            <td><textarea name="desc" id="" cols="20" rows="2"></textarea></td>
                        </tr>
                        <tr>
                            <td>发布给：</td>
                            <td><select name="userid" id="">
                                <option value="">==请选择==</option>
                                <c:forEach items="${user}" var="u">
                                <option value="${u.id}">${u.name}</option>
                                </c:forEach>
                            </select></td>
                        </tr>
                        <tr>
                            <td>期限：</td>
                            <td><input type="date" name="starttime">到<input type="date" name="endtime"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="发布"></td>
                        </tr>
                        </tbody>
                    </table>
                    
                    </form>
</body>
</html>