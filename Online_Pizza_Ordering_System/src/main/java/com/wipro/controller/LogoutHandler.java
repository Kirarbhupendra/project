package com.wipro.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession; 
/**
 * Servlet implementation class LogoutHandler
 */
@WebServlet("/Logout")
public class LogoutHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 response.setContentType("text/html");
		
		 request.getRequestDispatcher("index.html").include(request, response);  
         HttpSession session=request.getSession();  
         session.invalidate();
	}

}
