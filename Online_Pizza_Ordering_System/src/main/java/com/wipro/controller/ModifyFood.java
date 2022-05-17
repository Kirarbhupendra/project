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
 * Servlet implementation class ModifyFood
 */
@WebServlet("/modifyfood")
public class ModifyFood extends HttpServlet {
	private static final long serialVersionUID = 1L;
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			String foodid= request.getParameter("foodid");
			request.setAttribute("foodid", foodid);
			response.setContentType("text/html"); 
			 PrintWriter pw = response.getWriter();
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pizza","tiger");


PreparedStatement pst = con.prepareStatement("select * from FoodDetails where FoodId=?");

pst.setString(1, foodid);
 ResultSet rs= pst.executeQuery();
 if(rs.next()) {
			 RequestDispatcher dispatcher = request.getRequestDispatcher("./WelcomeModifyFood.jsp");
			 dispatcher.forward(request, response);
 }
 else {
			  pw.println("<h2>Enter Correct FoodId</h2>");
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
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
