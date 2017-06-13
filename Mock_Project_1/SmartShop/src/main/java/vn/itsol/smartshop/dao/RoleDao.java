package vn.itsol.smartshop.dao;

import java.util.List;

import vn.itsol.smartshop.model.Role;

public interface RoleDao {

	public List<Role> getAllRole();
	
	public void addRole(Role role);
	
}
