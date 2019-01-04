<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'loginCode.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <script type="text/javascript" src="../js/jquery.js"></script>
  <script type="text/javascript">
  		function flashImg() {
  			//改变属性
  			var img = document.getElementById("img1");
  			var src = img.getAttribute("src");
  			img.setAttribute("src", "/webjsp/ImgCode");
			img.setAttribute("src", "/webjsp/ImgCode?"+Math.random());
			alert(img.getAttribute("src"));
		}
  </script>
  <body>
  <h1/>验证码</h1>
  <form action="/webjsp/ImgLoginServlet.html" method="Post">
  	<input type="text" name="uname"><br>
  	<input type="password" name="pwd"><br>
  	<input type="text" name="code">
  	<span><img id="img1" alt="验证码" src="/webjsp/ImgCode" width="80" height="30px" onclick="flashImg()"></span><br>
  	<input type="submit" value="提交">
  </form>
  </body>
</html>
