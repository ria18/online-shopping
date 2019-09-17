package de.tqg.shoppingbackend.dao;

import java.util.List;

import de.tqg.shoppingbackend.dto.Category;

public interface CategoryDAO {
	
	boolean add(Category category);

	List <Category> list();
	Category get( int id);
	
	
}
