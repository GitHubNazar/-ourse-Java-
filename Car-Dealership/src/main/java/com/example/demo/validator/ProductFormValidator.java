package com.example.demo.validator;

import com.example.demo.form.VehicleForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.example.demo.dao.VehicleDAO;
import com.example.demo.entity.Vehicle;

@Component
public class ProductFormValidator implements Validator {
 
   @Autowired
   private VehicleDAO vehicleDAO;
 
   // This validator only checks for the ProductForm.
   @Override
   public boolean supports(Class<?> clazz) {
      return clazz == VehicleForm.class;
   }
 
   @Override
   public void validate(Object target, Errors errors) {
      VehicleForm vehicleForm = (VehicleForm) target;
 
      // Check the fields of ProductForm.
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "code", "NotEmpty.productForm.code");
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "name", "NotEmpty.productForm.name");
      ValidationUtils.rejectIfEmptyOrWhitespace(errors, "price", "NotEmpty.productForm.price");
 
      String code = vehicleForm.getCode();
      if (code != null && code.length() > 0) {
         if (code.matches("\\s+")) {
            errors.rejectValue("code", "Pattern.productForm.code");
         } else if (vehicleForm.isNewProduct()) {
            Vehicle vehicle = vehicleDAO.findVehicle(code);
            if (vehicle != null) {
               errors.rejectValue("code", "Duplicate.productForm.code");
            }
         }
      }
   }
 
}
