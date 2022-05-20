package com.wipro.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import com.wipro.model.Admin;
import com.wipro.model.CreditCardDetails;

public class CreditCardDao {
	public int CreditCardpay(CreditCardDetails creditCardDetails) throws SQLException, ClassNotFoundException {
	    int result=0;
		
		UUID uuid=UUID.randomUUID();
		Connection con = null;
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","pizza","tiger");
			PreparedStatement pst = con.prepareStatement("Insert into CreditCardDetails (OrderId,CreditCardNumber,CreditCardHolderName,ExpiryDate,CVC) values (?,?,?,?,?)");
			
			//cID=createID();
			String s = String.valueOf(uuid);
			String[] div = s.split("-");
	        String uid = div[0];
			pst.setString(1, uid);
			pst.setString(2, creditCardDetails.getCardnumber());
			pst.setString(3,creditCardDetails.getCardholdername());
			pst.setString(4,  creditCardDetails.getExpirydate());
			pst.setInt(5,creditCardDetails.getCcv());
            
			result =pst.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
}
