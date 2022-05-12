
package com.wipro.controller;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wipro.dao.UserRegisterDao;
import com.wipro.model.User;

/**
 * Servlet implementation class userregisterInput
 */
@WebServlet("/userregister")
public class userregisterInput extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    private UserRegisterDao userRegisterDao = new UserRegisterDao();
	
    
	
       
   

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at : ").append(request.getContextPath());
		RequestDispatcher dispatcher = request.getRequestDispatcher("/UserRegister.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		doGet(request, response);
	String	FirstName= request.getParameter("firstname");
	String	LastName = request.getParameter("lastname");
	String	Address = request.getParameter("address");
	String	Email = request.getParameter("email");
	String	Phoneno = request.getParameter("phoneno");
	String	Password=request.getParameter("password");
		
	User user = new User();
	user.setFirstName(FirstName);
	user.setLastName(LastName);
	user.setAddress(Address);
	user.setEmail(Email);
	user.setPhoneno(Phoneno);
	user.setPassword(Password);
	
	try {
		userRegisterDao.registeruser(user);
	} catch (ClassNotFoundException | SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	RequestDispatcher dispatcher = request.getRequestDispatcher("/userlogin.jsp");
	dispatcher.forward(request, response);
		
		
		
		
		
	}

}
