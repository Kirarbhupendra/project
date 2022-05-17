package com.wipro.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wipro.model.Food;
import com.wipro.dao.Fooddao;


/**
 * Servlet implementation class AddFood
 */

@WebServlet("/addfood")
public class AddFood extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Fooddao  fooddao  = new Fooddao();
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String	FoodName= request.getParameter("foodname");
		int  Cost = Integer.parseInt(request.getParameter("foodcost"));
		String	StoreId= request.getParameter("storeid");
		
		Food food = new Food();
		
		food.setFoodName(FoodName);
		food.setCost((int)Cost);
		food.setStoreId(StoreId);
		
		
		try {
			fooddao.food(food);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/ViewStoreList.jsp");
			dispatcher.forward(request, response);
		}
		
	}

}
