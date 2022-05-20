package com.wipro.controller;

import java.beans.Statement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.UUID;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.wipro.model.FoodCart;

/**
 * Servlet implementation class addToCart
 */
@WebServlet("/AddToCart")
public class addToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public addToCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("foodid");
		request.setAttribute("foodid", id);
		ArrayList<FoodCart> al=null;
		 HttpSession session=request.getSession(false);
		 if(session.getAttribute("Il")==null) {
			 al=new ArrayList<FoodCart>();
		
		
		

		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pizza","tiger");
			PreparedStatement pst = con.prepareStatement("select FoodId,FoodName,Cost from FoodDetails where FoodId="+"\'"+id+"\'");
			PrintWriter pw = response.getWriter();
			ResultSet rst = pst.executeQuery();
			
			while(rst.next()){
				FoodCart foodCart = new FoodCart();
				foodCart.setFoodId(rst.getString("FoodId"));
				foodCart.setFoodName(rst.getString("FoodName"));
				foodCart.setCost(rst.getInt("Cost"));
				foodCart.setQuantity(1);
				al.add(foodCart);
			}
			session.setAttribute("Il", al);
			con.close();
			 RequestDispatcher rd=request.getRequestDispatcher("Welcome.jsp");
	         rd.forward(request, response);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		 }
		 
		
		 
		 else {
			 al =(ArrayList<FoodCart>) session.getAttribute("Il");
			 try{
					Class.forName("oracle.jdbc.driver.OracleDriver");
					Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pizza","tiger");
					PreparedStatement pst = con.prepareStatement("select FoodId,FoodName,Cost from FoodDetails where FoodId="+"\'"+id+"\'");
					PrintWriter pw = response.getWriter();
					ResultSet rst = pst.executeQuery();
					
					
					while(rst.next()){
						
							FoodCart foodCart = new FoodCart();
							foodCart.setFoodId(rst.getString("FoodId"));
							foodCart.setFoodName(rst.getString("FoodName"));
							foodCart.setCost(rst.getInt("Cost"));
							foodCart.setQuantity(1);
							al.add(foodCart);
						
						
					}
					session.setAttribute("Il", al);
					con.close();
					 RequestDispatcher rd=request.getRequestDispatcher("Welcome.jsp");
			         rd.forward(request, response);
				}
				catch(Exception e){
					e.printStackTrace();
				}
			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
