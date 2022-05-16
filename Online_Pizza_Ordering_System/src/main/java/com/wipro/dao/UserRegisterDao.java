package com.wipro.dao;
import java.util.UUID;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.naming.spi.DirStateFactory.Result;

import com.wipro.model.User;

public class UserRegisterDao {
	/*int cID;
	private static int idCounter = 1;
	

	public static synchronized int createID()
	{
	    return idCounter++;
	} */   
	
	public int registeruser(User user) throws SQLException, ClassNotFoundException {
		
		int result=0;
		
		UUID uuid=UUID.randomUUID();
		Connection con = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pizza","tiger");
			PreparedStatement pst = con.prepareStatement("Insert into UserDetails (UserId,FirstName,LastName,EmailId,PhoneNo,Password,Address) values (?,?,?,?,?,?,?)");
			//cID=createID();
			String s = String.valueOf(uuid);
			String[] div = s.split("-");
	        String uid = div[0];
			pst.setString(1, uid);
			pst.setString(2, user.getFirstName());
			pst.setString(3, user.getLastName());
			pst.setString(4, user.getEmail());
			pst.setString(5, user.getPhoneno());
			pst.setString(6, user.getPassword());
			pst.setString(7, user.getAddress());            
			result =pst.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		 
	}

}
