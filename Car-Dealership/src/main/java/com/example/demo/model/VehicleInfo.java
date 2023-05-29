package com.example.demo.model;

import com.example.demo.entity.Vehicle;

public class VehicleInfo {
    private String code;
    private String name;
    private double price;
    private String description;
 
    public VehicleInfo() {
    }
 
    public VehicleInfo(Vehicle vehicle) {
        this.code = vehicle.getCode();
        this.name = vehicle.getName();
        this.price = vehicle.getPrice();
        this.description = vehicle.getDescription();
    }
 
    // Using in JPA/Hibernate query
    public VehicleInfo(String code, String name, double price, String description) {
        this.code = code;
        this.name = name;
        this.price = price;
        this.description = description;
    }
 
    public String getCode() {
        return code;
    }
 
    public void setCode(String code) {
        this.code = code;
    }
 
    public String getName() {
        return name;
    }
 
    public void setName(String name) {
        this.name = name;
    }
 
    public double getPrice() {
        return price;
    }
 
    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
