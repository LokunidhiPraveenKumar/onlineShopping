package org.hcl.services;

import java.util.List;

import org.hcl.model.Product;

public interface ProductService {
	List<Product> getProducts();
	boolean addProduct(Product product);
	boolean updateProduct(Product product);
	boolean deleteProduct(Integer pid);
	boolean addToCart(Integer pid,Integer uid);
}
