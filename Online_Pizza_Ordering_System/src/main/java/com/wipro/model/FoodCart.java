package com.wipro.model;

public class FoodCart  {
  
	String FoodId;
	String FoodName;
	int Cost;
	int Quantity;
	
	public FoodCart() {
		// TODO Auto-generated constructor stub
	}
	
	
	
	public FoodCart(String foodId, String foodName, int cost) {
		super();
		FoodId = foodId;
		FoodName = foodName;
		Cost = cost;
	}
	public String getFoodName() {
		return FoodName;
	}
	public void setFoodName(String foodName) {
		FoodName = foodName;
	}
	public int getCost() {
		return Cost;
	}
	public void setCost(int cost) {
		Cost = cost;
	}
	public String getFoodId() {
		return FoodId;
	}
	public void setFoodId(String foodId) {
		FoodId = foodId;
	}
	
	public String getStoreId() {
		return FoodId;
	}
	public void setStoreId(String storeId) {
		FoodId = storeId;
	}
	public int getQuantity() {
		return Quantity;
	}
	public void setQuantity(int qty) {
		Quantity = qty;
	}
  
}
