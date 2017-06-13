package vn.itsol.smartshop.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import vn.itsol.smartshop.dao.CategoryDao;
import vn.itsol.smartshop.model.Category;
import vn.itsol.smartshop.util.HibernateUtil;

public class CategoryDaoImpl implements CategoryDao {

	@Override
	public List<Category> getAll() {
		Session session=HibernateUtil.getSessionFactory().openSession();
		Transaction tr=session.beginTransaction();
		List<Category> list=session.createCriteria(Category.class).list();
		tr.commit();
		session.close();
		return list;
	}

}
