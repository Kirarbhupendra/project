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
 * Servlet implementation class DeleteFood
 */

@WebServlet("/deletefood")
public class DeleteFood extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		 	String id= request.getParameter("foodid");
			request.setAttribute("foodid", id);
			response.setContentType("text/html"); 
			PrintWriter pw = response.getWriter();
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pizza","tiger");
			PreparedStatement pst = con.prepareStatement("delete from FoodDetails where FoodId=?");

			pst.setString(1, id);
			ResultSet rs= pst.executeQuery();
			if(rs.next()) {
				RequestDispatcher dispatcher = request.getRequestDispatcher("/ViewStoreList.jsp");
				dispatcher.forward(request, response);
			}
			else {
				pw.println("<h2>Enter Correct StoreId</h2>");
			}
		
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	} catch (SQLException e) {
		e.printStackTrace();
	}
	
	}

}
