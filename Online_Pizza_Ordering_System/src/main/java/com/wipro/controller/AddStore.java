package com.wipro.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wipro.dao.Storedao;
import com.wipro.model.Store;

/**
 * Servlet implementation class AddStore
 */
@WebServlet("/addstore")
public class AddStore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private Storedao  storedao  = new Storedao();

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
		String	StoreName= request.getParameter("storename");
		String	Address = request.getParameter("storeaddress");
		String	PhoneNo = request.getParameter("phone");
		
		Store store = new Store();
		
		store.setStoreName(StoreName);
		store.setAddress(Address);
		store.setPhoneNumber(PhoneNo);
		
		try {
			storedao.store(store);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WelcomeAdmin.jsp");
			dispatcher.forward(request, response);
		}
		
		
		
		
	}

}
