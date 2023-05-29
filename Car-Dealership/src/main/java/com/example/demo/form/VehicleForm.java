package com.example.demo.form;

import com.example.demo.entity.Vehicle;
import org.springframework.web.multipart.MultipartFile;

public class VehicleForm {
    private String code;
    private String name;
    private double price;
    private String description;
 
    private boolean newProduct = false;
 
    // Upload file.
    private MultipartFile fileData;
 
    public VehicleForm() {
        this.newProduct= true;
    }
 
    public VehicleForm(Vehicle vehicle) {
        this.code = vehicle.getCode();
        this.name = vehicle.getName();
        this.price = vehicle.getPrice();
        this.description = vehicle.getDescription();
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
 
    public MultipartFile getFileData() {
        return fileData;
    }
 
    public void setFileData(MultipartFile fileData) {
        this.fileData = fileData;
    }
 
    public boolean isNewProduct() {
        return newProduct;
    }
 
    public void setNewProduct(boolean newProduct) {
        this.newProduct = newProduct;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
