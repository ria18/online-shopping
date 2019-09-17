package de.tqg.shoppingbackend.daoimpl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import org.springframework.stereotype.Repository;

import de.tqg.shoppingbackend.dao.CategoryDAO;
import de.tqg.shoppingbackend.dto.Category;

@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {

 // just for testing 
	
	
	@Autowired 
//	private SessionFactory sessionFactory; 
	
	private static List <Category> categories =new ArrayList<>();
	
	static {
		Category category = new Category();
		
		// first category 
		category.setId(1);
		category.setName("Handys");
		category.setDescription("this is some descraption for telefon");
		
		categories.add(category);
		
		
		// secound category 
		category = new Category();
		category.setId(2);
		category.setName("Waschmaschine");
		category.setDescription("this is some descraption for Televition");
		
		categories.add(category);
		
		
		// third category 
		 category = new Category();
		category.setId(3);
		category.setName("Computer");
		category.setDescription("this is some descraption for Laptop");
		
		
		categories.add(category);
		
		 category = new Category();
			category.setId(4);
			category.setName("Games");
			category.setDescription("this is some descraption for Games");
			categories.add(category);
	}
	
	@Override
	public List<Category> list() {
		// TODO Auto-generated method stub

		return categories;
	}

	@Override
	public Category get(int id) {
		// get echt catgory by id
		
		for (Category category:categories) {
			if(category.getId() == id)
				
				return category;
		}
		return null;
	}

	@Override
	@Transactional
	public boolean add(Category category) {
		 try {
			 // add add the >category to the database 
//			 sessionFactory.getCurrentSession().persist(category);
			 
			 return true;
			 
		 }catch (Exception e) {
			 e.fillInStackTrace();
			 return false;
		 }
		
	}

}