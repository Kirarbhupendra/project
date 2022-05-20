package com.wipro.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wipro.dao.CreditCardDao;
import com.wipro.model.CreditCardDetails;

/**
 * Servlet implementation class CreditCardInput
 */
@WebServlet("/checkout")
public class CreditCardInput extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    private CreditCardDao creditCardDao = new CreditCardDao();
    

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String CreditCardNumber = request.getParameter("cardnumber");
		String CreditCardHolderName = request.getParameter("cardholdername");
		String ExpiryDate = request.getParameter("expirydate");
		int CVC=  Integer.parseInt(request.getParameter("cvc"));
		
		CreditCardDetails creditCardDetails = new CreditCardDetails();
		creditCardDetails.setCardnumber(CreditCardNumber);
		creditCardDetails.setCardholdername(CreditCardHolderName);
		creditCardDetails.setExpirydate(ExpiryDate);
		creditCardDetails.setCcv(CVC);
		
		try {
			creditCardDao.CreditCardpay(creditCardDetails);
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher("/OrderPlaced.jsp");
		dispatcher.forward(request, response);
		
		
	}

}
