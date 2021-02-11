/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.jsf;

import dao.ProductDao;
import entity.Products;
import java.util.ArrayList;
import javax.faces.bean.ManagedBean;

/**
 *
 * @author Os-10
 */
@ManagedBean
public class ProductsBean {

    ProductDao dao = new ProductDao();
    int id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    String name;
    Double price;
    int quantity;

    public ProductsBean() {
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public ArrayList<Products> getProducts() {
        return dao.getAllProducts();
    }

    public String deleteById(int id) {
        dao.delete(id);
        return "index.jsp";
    }

    public String updateLink(Products p) {
        setId(p.getId());
        setName(p.getName());
        setPrice(p.getPrice());
        setQuantity(p.getQuantity());
        return "product.jsp";
    }

    public String createProduct() {
        Products p = new Products(name, price, quantity);
        if (id == 0) {
            p.setId(null);
        } else {
            p.setId(id);
        }
        dao.createProduct(p);
        return "index.jsp";
    }

}
