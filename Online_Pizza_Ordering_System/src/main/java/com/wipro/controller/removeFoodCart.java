package com.wipro.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wipro.model.FoodCart;

/**
 * Servlet implementation class RemoveFoodCartItem
 */
@WebServlet("/removefoodcart")
public class removeFoodCart extends HttpServlet {
 private static final long serialVersionUID = 1L;
    
 /**
  * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
  */
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  // TODO Auto-generated method stub
  response.getWriter().append("Served at: ").append(request.getContextPath());
  response.setContentType("text/html;charset=UTF-8");
  try(PrintWriter out = response.getWriter()){
   String FoodId = request.getParameter("foodid");
   if(FoodId!=null) {
    ArrayList<FoodCart> al = (ArrayList<FoodCart>) request.getSession().getAttribute("Il");
    if(al !=null) {
     for(FoodCart cart : al) {
      if (cart.getFoodId().equals(FoodId)) {
       al.remove(al.indexOf(cart));
       break;
      }
     }
     response.sendRedirect("Cart.jsp");
     
    }
    
   }
   else {
    response.sendRedirect("Cart.jsp");
   }
   
  }
  
  
 }

}