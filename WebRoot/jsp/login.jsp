<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
  	String uname="";
  	String pwd="";
  	Cookie[] cookies = request.getCookies();
  	if(cookies != null){
		for(Cookie c : cookies){
			if(c.getName().equals("uname")){
				uname = c.getValue();
				out.print(uname);
			}
			if(c.getName().equals("pwd")){
				pwd = c.getValue();
				out.print(pwd);
			}
		}
  	}
  	%>
    <form action="/webjsp/LoginServlet.html" method="post">
    	账号：<input type="text" name="uname" value=<%=uname %>><br>
    	密码：<input type="text" name="password" value=<%=pwd %>><br>
    	<input type="submit" value="登陆"><br>
    </form>
    <%
    	String error = "";
    	String err = (String)request.getAttribute("error");
    	if(err != null){
    		error = err;
    	}
    %>
    <font color="red"><h1><b><%=error %></b></h1></font>
  </body>
</html>
