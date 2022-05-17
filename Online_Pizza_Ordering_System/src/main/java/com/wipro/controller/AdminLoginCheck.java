package com.wipro.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminLoginCheck
 */
@WebServlet("/admincheck")
public class AdminLoginCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLoginCheck() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			response.setContentType("text/html"); 
			 PrintWriter pw = response.getWriter();
			 Class.forName("oracle.jdbc.driver.OracleDriver");
			 Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pizza","tiger");
   String s1 = request.getParameter("email");
   String s2 = request.getParameter("password");
   PreparedStatement pst = con.prepareStatement("select * from AdminDetails where EmailId=? and Password=?");
   pst.setString(1, s1);
   pst.setString(2, s2);
   
   ResultSet rs= pst.executeQuery();
   if(rs.next())
   {
	   RequestDispatcher dispatcher = request.getRequestDispatcher("/WelcomeAdmin.jsp");
		dispatcher.forward(request, response);
			 
   }
   else {
			   pw.println("<h2>Enter Correct Username or password</h2>");
        }
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
