package dot.com.Jcoffeeshop.Dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import dot.com.Jcoffeeshop.entity.Items;


@Repository ("Jcoffeeshop")
@Transactional
public class ItemsDao {
	
	@PersistenceContext
	public EntityManager eManager;

	public List<Items> findAll(){
		
		TypedQuery<Items> namedQuery = eManager.createNamedQuery("find_all_items", Items.class);
		return namedQuery.getResultList();
	}
	
	public void delete (int id) {
		Items i = findById(id);
		
		eManager.remove(i);
	}
	
	
	
	public Items findById(int id) {

		return eManager.find(Items.class, id);
	}
	public void addDrink(Items drink) {
		
		eManager.merge(drink);
		
	}
}
