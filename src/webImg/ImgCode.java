package webImg;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;

import javax.imageio.ImageIO;
import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import comm.CommUtils;

public class ImgCode extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			CommUtils.OutImg(CommUtils.imgCode(), "jpg", response.getOutputStream());
			HttpSession session = request.getSession();
			session.setAttribute("code", CommUtils.getContent());
	}

}
