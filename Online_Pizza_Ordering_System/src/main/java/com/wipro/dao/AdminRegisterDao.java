package com.wipro.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.wipro.model.Admin;
import com.wipro.model.User;

public class AdminRegisterDao {
	int cID;
	private static int idCounter = 1;
	

	public static synchronized int createID()
	{
	    return idCounter++;
	}    
	public int registeradmin(Admin admin) throws SQLException, ClassNotFoundException {
		
		int result=0;
		
		
		Connection con = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","oracle","tiger");
			PreparedStatement pst = con.prepareStatement("Insert into AdminDetails (AdminId,EmplyeeId,FirstName,LastName,EmailId,PhoneNo,Password,Address) values (?,?,?,?,?,?,?,?)");
			cID=createID();
			String s = String.valueOf(cID);
			pst.setString(1, s);
			pst.setString(2, admin.getEmployeeID());
		  pst.setString(3, admin.getFirstName());
			pst.setString(4, admin.getLastName());
			pst.setString(5, admin.getEmail());
			pst.setString(6, admin.getPhoneno());
			pst.setString(7, admin.getPassword());
			pst.setString(8, admin.getAddress());
            
			result =pst.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
		 
	}

}
