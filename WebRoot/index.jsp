<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
	<a href="/webjsp/jsp/num.jsp">num.jsp</a>
	<% 
	String paths = request.getContextPath();
	String basePaths = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
	out.print("项目名："+paths);
	out.print("当前路径"+basePaths);
	%>
	<br/>
	<%
		int a = 10;
	%>
	
	<br/>
	<%
		out.print(++a);
	%>
	
	<%=a+"哈哈哈"
		
	%>
	
	<%!
		int a = 1000;
		void getA(){
			a++;
		}
	%>
	<%
		getA();
		out.print(this.a);
	%>
  </body>
</html>
