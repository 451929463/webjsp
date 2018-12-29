package webjsp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		System.out.println("join post");
		String num1 = req.getParameter("num1");
		String num2 = req.getParameter("num2");
		int result = Integer.parseInt(num1) + Integer.parseInt(num2);
		req.setAttribute("result", result);
		System.out.println(result);
		req.getRequestDispatcher("/jsp/result.jsp").forward(req, resp);
	}
}
