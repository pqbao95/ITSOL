package vn.itsol.smartshop.controller;

import java.util.List;

import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import vn.itsol.smartshop.dao.CategoryDao;
import vn.itsol.smartshop.dao.impl.CategoryDaoImpl;
import vn.itsol.smartshop.model.Category;

@RestController
@RequestMapping("/category")
public class CategoryController {
	
	CategoryDao dao=new CategoryDaoImpl();
	
	@RequestMapping(value="/getall",method=RequestMethod.GET,produces="application/json")
	public List<Category> getAll(){
		return dao.getAll();
	}
	
}
