<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <title></title>
    <script src="js/jquery-1.11.3.js"></script>
    <script src="js/bootstrap.js"></script>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css"></link></head>
  <body>
  	<div class="row">
    <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
	<div class="container">
	    <div id="pa" class="panel-group"  style="width:130px">
   		 <div class="panel panel-warning">
       		     <div class="panel-heading">
                        <h3 class="panel-title" data-toggle="collapse" data-target="#p2" data-parent="#pa">今日办公任务</h3>
            	     </div>
                	 <div id="p2"  class="panel-collapse collapse">
                        	<div class="panel-body text-center"><a href="em/alltask.do" target="right">所有的任务</a></div>
           	       	        <div class="panel-body text-center"><a href="em/ing.do" target="right">任务开发中</a></div>
            			    <div class="panel-body text-center"><a href="em/ed.do" target="right">完成的任务</a></div>
            			    <div class="panel-body text-center"><a href="em/de.do" target="right">延迟的任务</a></div>
               		 </div>
          	  </div>
            <div class="panel panel-success">
   		 <div class="panel-heading">
       			 <h3 class="panel-title text-center" data-toggle="collapse" data-target="#p3"  data-parent="#pa">请假管理</h3>
		 </div>
           	 	 <div id="p3"  class="panel-collapse collapse">
        			<div class="panel-body text-center"><a href="em/myholiday.do" target="right">我的请假</a></div>
        			<div class="panel-body text-center"><a href="em/applyholiday.do" target="right">申请假期</a></div>
   	       		 </div>
	    </div>
 	  </div>
        </div>
    </div>	
    </div>
  </body>
</html>
