/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import entity.Products;
import java.util.ArrayList;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author Os-10
 */
public class ProductDao {

    public ArrayList<Products> getAllProducts() {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        return (ArrayList<Products>) s.createCriteria(Products.class).list();
    }

    public void delete(int id) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Transaction t = s.beginTransaction();
        Products p = new Products();
        p.setId(id);
        s.delete(p);
        t.commit();
        s.close();
    }

    public void createProduct(Products p) {
        Session s = NewHibernateUtil.getSessionFactory().openSession();
        Transaction t = s.beginTransaction();
        s.saveOrUpdate(p);
        t.commit();
        s.close();
    }

}
