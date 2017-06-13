package vn.itsol.smartshop.test;

import java.util.List;

import vn.itsol.smartshop.dao.RoleDao;
import vn.itsol.smartshop.dao.impl.RoleDaoImpl;
import vn.itsol.smartshop.model.Role;

public class TestMain {

	public static void main(String[] args) {
		RoleDao roleDao = new RoleDaoImpl();
		List<Role> list = roleDao.getAllRole();
		for (Role role : list) {
			System.out.println("RoleId: " + role.getRoleid() + " ,RoleName: " + role.getRolename());
		}
	}

}
