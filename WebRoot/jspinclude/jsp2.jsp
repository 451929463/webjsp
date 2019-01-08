<%
	String uname = request.getParameter("uname");
	String feel = request.getParameter("my");
%>
<%
	out.print(feel+"---"+uname);
%>
