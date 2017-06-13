package vn.itsol.smartshop.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import vn.itsol.smartshop.dao.ProductDao;
import vn.itsol.smartshop.model.Product;
import vn.itsol.smartshop.util.HibernateUtil;

public class ProductDaoImpl implements ProductDao {

	@Override
	public List<Product> getAll() {
		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction tr=session.beginTransaction();
		List<Product> list=session.createCriteria(Product.class).list();
		tr.commit();
		session.close();
		return list;
	}

	@Override
	public List<Product> getByCategory(int id) {
		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction tr=session.beginTransaction();
		Query query=session.createQuery("from Product WHERE categoryid='"+id+"'");
		List<Product> list=query.list();
		tr.commit();
		session.close();
		return list;
	}

	@Override
	public Product getById(int id) {
		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction tr=session.beginTransaction();
		Product product=(Product) session.get(Product.class, id);
		tr.commit();
		session.close();
		return product;
	}

}
