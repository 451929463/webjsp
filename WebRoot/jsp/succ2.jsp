<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'succ2.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  	<%
  		String uname = (String)session.getAttribute("uname");
  		String pwd = (String)session.getAttribute("pwd");
  		System.out.print(uname+"------"+pwd);
  		if(uname == null || pwd == null ){
  			request.setAttribute("error", "请先登陆");
  			request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
  		}else{
	  		if(uname.equals("123") && pwd.equals("456")){
	  			
	  		}else{
	  			request.setAttribute("error", "请先登陆");
	  			request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
	  		}
  		}
  	%>
    <h1>my success2</h1>
  </body>
</html>
