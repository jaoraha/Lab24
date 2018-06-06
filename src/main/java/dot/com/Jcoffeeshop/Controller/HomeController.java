package dot.com.Jcoffeeshop.Controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dot.com.Jcoffeeshop.Dao.ItemsDao;
import dot.com.Jcoffeeshop.entity.Items;

@Controller
public class HomeController {

	@Autowired
	public ItemsDao dao;
	
	
	@RequestMapping("/")
	public ModelAndView Index () {
		List<Items> heroCoffee= dao.findAll();
		System.out.println(heroCoffee);
		return new ModelAndView("Index", "hot", heroCoffee);
				
	}
	@RequestMapping("delete")
	public ModelAndView delete(@RequestParam("id")int id) {
		dao.delete(id);
		return new ModelAndView("redirect:/");
	}
	@RequestMapping("Addform")
	public ModelAndView addPage() {
		
		return new ModelAndView("Addform");
	}
	
	
	@RequestMapping("getItem")
	public ModelAndView addItem(@RequestParam("name") String name,@RequestParam("description")String describe,@RequestParam("qty") String qty,@RequestParam("price") float price) {
		Items i = new Items (name, describe, qty, price);
		dao.addDrink(i);
		return new ModelAndView("redirect:/");
	}
	
	@RequestMapping("update")
	public ModelAndView update (@RequestParam("id")int id) {
		Items i = dao.findById(id);
		return new ModelAndView("edititem","item", i);
	}
	
	@RequestMapping("updateItem")
	public ModelAndView updateItem(@RequestParam ("id") int id, @RequestParam("name") String name,@RequestParam("description")String describe,@RequestParam("qty") String qty,@RequestParam("price") float price) {
		Items i = new Items (id,name, describe, qty, price);
		dao.addDrink(i);
		return new ModelAndView("redirect:/");
	}
}
