package webSession;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet {

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("password");
		System.out.println(uname+"------"+pwd);
		System.out.println(uname instanceof String);
		System.out.println(pwd.hashCode());
		String string = new String("456");
		System.out.println(string.hashCode()+"-----");
		System.out.println("456".hashCode());
		if(uname.equals("123") && pwd.equals("456")){
			System.out.println("success");
			HttpSession session = request.getSession();
			session.setAttribute("uname", uname);
			session.setAttribute("pwd", pwd);
			
			Cookie c1 = new Cookie("uname", uname);
			Cookie c2 = new Cookie("pwd", pwd);
			c1.setMaxAge(60*60*24*15);
			c2.setMaxAge(60*60*24*15);
			response.addCookie(c1);
			response.addCookie(c2);
			
			
			request.getRequestDispatcher("/jsp/succ1.jsp").forward(request, response);
		}else{
			System.out.println("Error");
			//response.setContentType("utf-8");
			request.setAttribute("error", "请先登陆！");
			request.getRequestDispatcher("/jsp/login.jsp").forward(request, response);
		}
	}

}
