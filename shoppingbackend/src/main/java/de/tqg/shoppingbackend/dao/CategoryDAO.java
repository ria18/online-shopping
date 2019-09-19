package de.tqg.shoppingbackend.dao;

import java.util.List;

import de.tqg.shoppingbackend.dto.Category;

public interface CategoryDAO {
	
	Category get(int id);
	List<Category> list();
	boolean add(Category category);
	boolean update(Category category);
	boolean delete(Category category);
	
	
}
