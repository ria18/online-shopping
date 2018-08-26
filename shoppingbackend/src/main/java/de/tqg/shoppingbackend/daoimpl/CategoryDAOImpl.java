package de.tqg.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import de.tqg.shoppingbackend.dao.CategoryDAO;
import de.tqg.shoppingbackend.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

 // just for testing 
	
	private static List <Category> categories =new ArrayList<>();
	
	static {
		Category category = new Category();
		
		// first category 
		category.setId(1);
		category.setName("Telefon");
		category.setDescreption("this is some descraption for telefon");
		
		categories.add(category);
		
		
		// secound category 
		category = new Category();
		category.setId(2);
		category.setName("TV");
		category.setDescreption("this is some descraption for Televition");
		
		categories.add(category);
		
		
		// third category 
		 category = new Category();
		category.setId(3);
		category.setName("Laptop");
		category.setDescreption("this is some descraption for Laptop");
		
		
		categories.add(category);
	}
	
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub

		return categories;
	}

}