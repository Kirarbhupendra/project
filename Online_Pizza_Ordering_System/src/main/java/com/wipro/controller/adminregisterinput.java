package com.wipro.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wipro.dao.AdminRegisterDao;
import com.wipro.dao.UserRegisterDao;
import com.wipro.model.Admin;

/**
 * Servlet implementation class adminregisterinput
 */
@WebServlet("/adminregister")
public class adminregisterinput extends HttpServlet {
	private static final long serialVersionUID = 1L;
	  private AdminRegisterDao adminRegisterDao = new AdminRegisterDao();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminregisterinput() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/AdminRegister.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String EmployeeId = request.getParameter("employeeid");
		String	FirstName= request.getParameter("firstname");
		String	LastName = request.getParameter("lastname");
		String	Address = request.getParameter("address");
		String	Email = request.getParameter("email");
		String	Phoneno = request.getParameter("phoneno");
		String	Password=request.getParameter("password");
		
		Admin admin = new Admin();
		
		admin.setEmployeeID(EmployeeId);
		admin.setFirstName(FirstName);
		admin.setLastName(LastName);
		admin.setAddress(Address);
		admin.setEmail(Email);
		admin.setPhoneno(Phoneno);
		admin.setPassword(Password);
		try {
			adminRegisterDao.registeradmin(admin);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/adminlogin.jsp");
		dispatcher.forward(request, response);
		
	}

}
