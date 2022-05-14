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
 * Servlet implementation class ModifyStoreInput
 */
@WebServlet("/modifyinput")
public class ModifyStoreInput extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		PrintWriter pw = response.getWriter();
		 try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","oracle","tiger");
			String Storeid = request.getParameter("storeid");
			String	StoreName= request.getParameter("storename");
			String	Address = request.getParameter("address");
			String	PhoneNo = request.getParameter("phone");
			PreparedStatement pst = con.prepareStatement("update StoreDetails set StoreName=?,Address=?,PhoneNo=? where StoreId=?");
			pst.setString(1, StoreName);
			pst.setString(2, Address);
			pst.setString(3, PhoneNo);
			pst.setString(4, Storeid);
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
		}
		 
	}

}
