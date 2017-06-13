package vn.itsol.smartshop.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import vn.itsol.smartshop.dao.RoleDao;
import vn.itsol.smartshop.model.Role;
import vn.itsol.smartshop.util.HibernateUtil;

public class RoleDaoImpl implements RoleDao{

	@Override
	public List<Role> getAllRole() 
	{
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tx = null;
		List<Role> list = null;
		try 
		{
			tx = session.beginTransaction();
			list = session.createQuery("from Role").list();
			tx.commit();
		} 
		catch (Exception e)
		{
			e.printStackTrace();
			System.out.println(e.getMessage());
			tx.rollback();
		}
		return list;
	}

	@Override
	public void addRole(Role role) {
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tr=session.beginTransaction();
		session.persist(role);
		tr.commit();
		session.close();
	}
	
	public static void main(String[] args) {
		Role r=new Role();
		r.setRolename("saasxas");
		RoleDaoImpl dao=new RoleDaoImpl();
		dao.addRole(r);
	}

}
