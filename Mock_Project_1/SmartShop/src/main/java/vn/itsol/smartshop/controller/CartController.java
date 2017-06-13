package vn.itsol.smartshop.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import vn.itsol.smartshop.dao.ProductDao;
import vn.itsol.smartshop.dao.impl.ProductDaoImpl;
import vn.itsol.smartshop.model.Item;

@RestController
@RequestMapping("/shoppingcart")
public class CartController {

	ProductDao dao = new ProductDaoImpl();

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/ordernow", method = RequestMethod.GET)
	public ModelAndView orderNow(@RequestParam(name = "id", required = false) int id, HttpSession session) {
		if (session.getAttribute("cart") == null) {
			List<Item> cart = new ArrayList<Item>();
			cart.add(new Item(this.dao.getById(id), 1));
			session.setAttribute("cart", cart);
		} else {
			List<Item> cart = (List<Item>) session.getAttribute("cart");
			int index = isExisting(id, session);
			if (index == -1) {
				cart.add(new Item(this.dao.getById(id), id));
			} else {
				int quantity = cart.get(index).getQuantity() + 1;
				cart.get(index).setQuantity(quantity);
			}
			session.setAttribute("cart", cart);
		}
		return new ModelAndView("product_summary");
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/deleteorder", method = RequestMethod.GET)
	public void deleteOrder(@RequestParam(name = "id", required = false) int id, HttpSession session) {
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		int index = isExisting(id, session);
		cart.remove(index);
		session.setAttribute("cart", cart);
		//return new ModelAndView("redirect:#!/product_summary");
		//return new ModelAndView("product_summary");
	}

	private int isExisting(int id, HttpSession session) {
		List<Item> cart = (List<Item>) session.getAttribute("cart");
		for (int i = 0; i < cart.size(); i++)
			if (cart.get(i).getProduct().getProductid() == id)
				return i;
		return -1;
	}

}
