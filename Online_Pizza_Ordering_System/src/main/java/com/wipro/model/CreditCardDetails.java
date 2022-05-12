package com.wipro.model;

import java.util.Date;

public class CreditCardDetails {
	
	long CreditCardNumber;
	Date ValidFrom;
	Date validTo;
	long Balance;
	public long getCreditCardNumber() {
		return CreditCardNumber;
	}
	public void setCreditCardNumber(long creditCardNumber) {
		CreditCardNumber = creditCardNumber;
	}
	public Date getValidFrom() {
		return ValidFrom;
	}
	public void setValidFrom(Date validFrom) {
		ValidFrom = validFrom;
	}
	public Date getValidTo() {
		return validTo;
	}
	public void setValidTo(Date validTo) {
		this.validTo = validTo;
	}
	public long getBalance() {
		return Balance;
	}
	public void setBalance(long balance) {
		Balance = balance;
	}
	

}
