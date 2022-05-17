package com.wipro.dao;
import java.util.UUID;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


import com.wipro.model.Food;
public class Fooddao {

	public int food(Food food) throws ClassNotFoundException {
	    int result=0;
			
	    	UUID uuid=UUID.randomUUID();
			Connection con = null;
			try {
				Class.forName("oracle.jdbc.driver.OracleDriver");
				con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pizza","tiger");
				PreparedStatement pst = con.prepareStatement("Insert into FoodDetails (FoodId,FoodName,Cost,StoreId) values (?,?,?,?)");
				//cID=createID();
				String s = String.valueOf(uuid);
				String[] div = s.split("-");
		        String uid = div[0];
				pst.setString(1, uid);
				pst.setString(2, food.getFoodName());
				pst.setInt(3, food.getCost());
				pst.setString(4, food.getStoreId());
	            
				result =pst.executeUpdate();
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return result;
		}
	
}
