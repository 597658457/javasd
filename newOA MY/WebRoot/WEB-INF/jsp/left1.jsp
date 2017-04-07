<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html lang="en">
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
     <meta charset="UTF-8">
    <title>人事</title>
    <link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link>
    <script src="js/jquery-1.11.3.js"></script>
    <script src="js/bootstrap.js"></script>

  </head>
  
 <body>
  	<div class="row">
    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        <div class="container">
            <div id="pa" class="panel-group"  style="width:130px">
                <div class="panel panel-warning">
                    <div class="panel-heading">
                        <h3 class="panel-title text-center" data-toggle="collapse" data-target="#p9"  data-parent="#pa">员工管理</h3>

                    </div>
                    <div id="p9" class="panel-collapse collapse">
                        <div class="panel-body text-center"><a href="login/allem.do" target="right">所有员工</a></div>
                        <div class="panel-body text-center"><a href="login/addem.do" target="right">添加员工</a></div>
                    </div>
                </div>
            </div>
        </div>
     </div>
  </div>
  </body>
</html>
