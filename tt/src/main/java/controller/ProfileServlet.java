package controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class ProfileServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
//		PrintWriter out=response.getWriter();
//		request.getRequestDispatcher("link.html").include(request, response);
//		String name="";
//		HttpSession session=request.getSession(false);
//		if(session!=null){
//		name=(String)session.getAttribute("name");
//		
//		out.print("Hello, "+name+" Welcome to Profile");
//		}
//		else{
//			//session.removeAttribute("myStudent");
//			session.invalidate();
//			request.getRequestDispatcher("authentifier.jsp").include(request, response);
//		}
//		out.close();
		
		
	}
}
