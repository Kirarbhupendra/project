package com.wipro.dao;
import java.util.UUID;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.wipro.model.Store;

public class Storedao {
	public int store(Store store) throws ClassNotFoundException {
    int result=0;
		
    UUID uuid=UUID.randomUUID();
		Connection con = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pizza","tiger");
			PreparedStatement pst = con.prepareStatement("Insert into StoreDetails (StoreId,StoreName,Address,PhoneNo) values (?,?,?,?)");
			//cID=createID();
			String s = String.valueOf(uuid);
			String[] div = s.split("-");
	        String uid = div[0];
			pst.setString(1, uid);
			pst.setString(2, store.getStoreName());
			pst.setString(3, store.getAddress());
			pst.setString(4, store.getPhoneNumber());
            
			result =pst.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}
