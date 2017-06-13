package vn.itsol.smartshop.controller;

import java.util.List;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import vn.itsol.smartshop.dao.RoleDao;
import vn.itsol.smartshop.dao.impl.RoleDaoImpl;
import vn.itsol.smartshop.model.Role;

@RestController
public class RoleController {

	RoleDao roleDao = new RoleDaoImpl();
	
	@RequestMapping(value = "/role", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public List<Role> getAllRole()
	{
		List<Role> list = roleDao.getAllRole();
		return list;
	}
}
