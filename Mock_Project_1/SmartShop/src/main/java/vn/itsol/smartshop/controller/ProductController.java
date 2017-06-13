package vn.itsol.smartshop.controller;

import java.util.List;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import vn.itsol.smartshop.dao.ProductDao;
import vn.itsol.smartshop.dao.impl.ProductDaoImpl;
import vn.itsol.smartshop.model.Product;

@RestController
@RequestMapping("/product")
public class ProductController {
	
	ProductDao dao=new ProductDaoImpl();
	
	@RequestMapping(value="/getall",method=RequestMethod.GET,produces="application/json")
	public List<Product> getAll(){
		return dao.getAll();
	}
	
	@RequestMapping(value="/list",method=RequestMethod.GET,produces="application/json")
	public List<Product> pageProduct(@RequestParam("id")int id){
		List<Product> list=dao.getByCategory(id);
		return list;
	}
	
	@RequestMapping(value="/getbyid",method=RequestMethod.GET,produces="application/json")
	public Product getById(@RequestParam("id")int id){
		Product product=dao.getById(id);
		return product;
	}
	
	@RequestMapping(value="/details",method=RequestMethod.GET)
	public ModelAndView pageProductDetail(@RequestParam("id")int id){
		ModelAndView model=new ModelAndView();
		model.addObject("product", dao.getById(id));
		model.setViewName("product_details");
		return model;
	} 
	
}
