package vn.itsol.smartshop.dao;

import java.util.List;

import vn.itsol.smartshop.model.Product;

public interface ProductDao {

	public List<Product> getAll();
	
	public List<Product> getByCategory(int id);
	
	public Product getById(int id);

}
