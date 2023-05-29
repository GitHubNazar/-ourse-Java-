package com.example.demo.model;

public class CartLineInfo {
	  
    private VehicleInfo vehicleInfo;
    private int quantity;
  
    public CartLineInfo() {
        this.quantity = 0;
    }
  
    public VehicleInfo getProductInfo() {
        return vehicleInfo;
    }
  
    public void setProductInfo(VehicleInfo vehicleInfo) {
        this.vehicleInfo = vehicleInfo;
    }
  
    public int getQuantity() {
        return quantity;
    }
  
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
  
    public double getAmount() {
        return this.vehicleInfo.getPrice() * this.quantity;
    }
     
}