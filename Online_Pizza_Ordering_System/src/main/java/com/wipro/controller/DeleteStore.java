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
 * Servlet implementation class DeleteStore
 */

@WebServlet("/deletestore")
public class DeleteStore extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			 	String id= request.getParameter("id");
				request.setAttribute("id", id);
				response.setContentType("text/html"); 
				PrintWriter pw = response.getWriter();
				Class.forName("oracle.jdbc.driver.OracleDriver");
				Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pizza","tiger");
				PreparedStatement pst1 = con.prepareStatement("delete from FoodDetails where StoreId=?");
				pst1.setString(1, id);
				int r=pst1.executeUpdate();
				
				PreparedStatement pst2 = con.prepareStatement("delete from StoreDetails where StoreId=?");
				pst2.setString(1, id);
				int r1=pst2.executeUpdate();
				if(r==1 && r1==1) {
					RequestDispatcher dispatcher = request.getRequestDispatcher("./WelcomeAdmin.jsp");
					dispatcher.forward(request, response);

				}
				
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
