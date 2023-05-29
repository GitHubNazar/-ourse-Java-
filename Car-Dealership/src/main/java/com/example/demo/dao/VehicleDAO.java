package com.example.demo.dao;

import java.io.IOException;
import java.util.Date;

import javax.persistence.NoResultException;

import com.example.demo.entity.Vehicle;
import com.example.demo.form.VehicleForm;
import com.example.demo.model.VehicleInfo;
import org.hibernate.query.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.example.demo.pagination.PaginationResult;

@Transactional
@Repository
public class VehicleDAO {
 
    @Autowired
    private SessionFactory sessionFactory;
 
    public Vehicle findVehicle(String code) {
        try {
            String sql = "Select e from " + Vehicle.class.getName() + " e Where e.code =:code ";
 
            Session session = this.sessionFactory.getCurrentSession();
            Query<Vehicle> query = session.createQuery(sql, Vehicle.class);
            query.setParameter("code", code);
            return (Vehicle) query.getSingleResult();
        } catch (NoResultException e) {
            return null;
        }
    }
 
    public VehicleInfo findProductInfo(String code) {
        Vehicle vehicle = this.findVehicle(code);
        if (vehicle == null) {
            return null;
        }
        return new VehicleInfo(vehicle.getCode(), vehicle.getName(), vehicle.getPrice(), vehicle.getDescription());
    }
 
    @Transactional(propagation = Propagation.REQUIRES_NEW, rollbackFor = Exception.class)
    public void save(VehicleForm vehicleForm) {
 
        Session session = this.sessionFactory.getCurrentSession();
        String code = vehicleForm.getCode();
 
        Vehicle vehicle = null;
 
        boolean isNew = false;
        if (code != null) {
            vehicle = this.findVehicle(code);
        }
        if (vehicle == null) {
            isNew = true;
            vehicle = new Vehicle();
            vehicle.setCreateDate(new Date());
        }
        vehicle.setCode(code);
        vehicle.setName(vehicleForm.getName());
        vehicle.setPrice(vehicleForm.getPrice());
        vehicle.setDescription(vehicleForm.getDescription());
 
        if (vehicleForm.getFileData() != null) {
            byte[] image = null;
            try {
                image = vehicleForm.getFileData().getBytes();
            } catch (IOException e) {
            }
            if (image != null && image.length > 0) {
                vehicle.setImage(image);
            }
        }
        if (isNew) {
            session.persist(vehicle);
        }
        // If error in DB, Exceptions will be thrown out immediately
        session.flush();
    }
 
    public PaginationResult<VehicleInfo> queryProducts(int page, int maxResult, int maxNavigationPage,
                                                       String likeName) {
        String sql = "Select new " + VehicleInfo.class.getName() //
                + "(p.code, p.name, p.price,p.description) " + " from "//
                + Vehicle.class.getName() + " p ";
        if (likeName != null && likeName.length() > 0) {
            sql += " Where lower(p.name) like :likeName ";
        }
        sql += " order by p.createDate desc ";
        // 
        Session session = this.sessionFactory.getCurrentSession();
        Query<VehicleInfo> query = session.createQuery(sql, VehicleInfo.class);
 
        if (likeName != null && likeName.length() > 0) {
            query.setParameter("likeName", "%" + likeName.toLowerCase() + "%");
        }
        return new PaginationResult<VehicleInfo>(query, page, maxResult, maxNavigationPage);
    }
 
    public PaginationResult<VehicleInfo> queryProducts(int page, int maxResult, int maxNavigationPage) {
        return queryProducts(page, maxResult, maxNavigationPage, null);
    }
 
}
