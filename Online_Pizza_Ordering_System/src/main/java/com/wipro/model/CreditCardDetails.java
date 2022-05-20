package com.wipro.model;

import java.util.Date;

public class CreditCardDetails {
	private String OrderId;
	private String Cardnumber;
	private String Cardholdername;
	private String Expirydate;
	private int ccv;
	public String getExpirydate() {
		return Expirydate;
	}
	public void setExpirydate(String expirydate) {
		Expirydate = expirydate;
	}
	
	public String getOrderId() {
		return OrderId;
	}
	public void setOrderId(String orderId) {
		OrderId = orderId;
	}
	public String getCardnumber() {
		return Cardnumber;
	}
	public void setCardnumber(String cardnumber) {
		Cardnumber = cardnumber;
	}
	public String getCardholdername() {
		return Cardholdername;
	}
	public void setCardholdername(String cardholdername) {
		Cardholdername = cardholdername;
	}
	
	public int getCcv() {
		return ccv;
	}
	public void setCcv(int ccv) {
		this.ccv = ccv;
	}
	
	

}
