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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登 陆</title>
	<link rel="stylesheet" href="../css/bootstrap.css" type="text/css"></link>
    <script src="../js/jquery-1.11.3.js"></script>
    <script src="../js/bootstrap.js"></script>
  
</head>
<body>
<base href="<%=basePath%>">
<form action="login/loginCheck.do" method="post">
<div class="container">
    <h1><p class="text-center">网博OA办公系统</p>
        <small class="text-left">用户登陆</small>
    </h1>
</div>
<div class="container">
    <div class="col-md-3">
        <form role="form">
	    <div class="form-group">
            <b font="5">帐号：</b><div class="input-group">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-user"></span>
                                </div>
                                <input type="text" name="id" class="form-control" placeholder="请输入帐号">
                            </div>
                        </div><br>
		 <div class="form-group">
                <b font="5">密码：</b><br><div class="input-group">
                                <div class="input-group-addon">
                                    <span class="glyphicon glyphicon-lock"></span>
                                </div>
                                <input type="password" name="pwd" class="form-control" placeholder="请输入密码">
                            </div>
                        </div>
				<br>
            	<div align="center" >
  		<font color="green"><h4>${rtBean.msg }</h4></font>
  	</div><br>
  
            <div class="container">          
			    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
			    <input type="submit" value="登陆" class="btn btn-warning"/>
			</div>
			            
        </form>
    </div>

</div>
</form>
</body>
</html>