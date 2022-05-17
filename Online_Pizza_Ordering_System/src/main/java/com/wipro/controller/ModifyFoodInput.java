package com.wipro.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ModifyFoodInput
 */
@WebServlet("/modifyfoodinput")
public class ModifyFoodInput extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw = response.getWriter();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pizza","tiger");
			String Foodid = request.getParameter("foodid");
			String	FoodName= request.getParameter("foodname");
			int	FoodCost =Integer.parseInt(request.getParameter("foodcost")); 
			
			PreparedStatement pst = con.prepareStatement("update FoodDetails set FoodName=?,Cost=? where FoodId=?");
			pst.setString(1, FoodName);
			pst.setInt(2,FoodCost);
			pst.setString(3,Foodid);
			
			int result=pst.executeUpdate();
			if(result==1) {
				

			 RequestDispatcher dispatcher = request.getRequestDispatcher("/WelcomeAdmin.jsp");
				dispatcher.forward(request, response);
			}
			else {
				pw.println("<h2>Enter Correct Store Id</h2>");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
