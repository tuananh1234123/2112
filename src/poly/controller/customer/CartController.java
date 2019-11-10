package poly.controller.customer;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.entity.Cart;
import poly.entity.Product;


@Transactional
@Controller
public class CartController {
	@Autowired
	SessionFactory factory;

	    @RequestMapping(value = "add.php", method = RequestMethod.POST)
	    public String viewAdd(ModelMap mm, HttpSession session, HttpServletRequest request) {
	        HashMap<Integer, Cart> cartItems = (HashMap<Integer, Cart>) session.getAttribute("myCartItems");
	        int quantity = Integer.parseInt(request.getParameter("quantity"));
	        int productId = Integer.parseInt(request.getParameter("productID"));
	        if(quantity==0) {
	        	 return "redirect:/cart.php";
	        }
	        if (cartItems == null) {
	            cartItems = new HashMap<>();
	        }
	        Product product = findIdProduct(productId);
	        if (product != null) {
	            if (cartItems.containsKey(productId)) {
	                Cart item = cartItems.get(productId);
	                item.setProduct(product);
	                item.setQuantity(item.getQuantity() + quantity);
	                cartItems.put(productId, item);
	            } else {
	                Cart item = new Cart();
	                item.setProduct(product);
	                item.setQuantity(quantity);
	                cartItems.put(productId, item);
	            }
	        }
	        session.setAttribute("myCartItems", cartItems);
	        session.setAttribute("myCartTotal", totalPrice(cartItems));
	        session.setAttribute("myCartNum", cartItems.size());
	        return "redirect:/cart.php";
	    }

	    @RequestMapping(value = "cart", method = RequestMethod.GET)
	    public String viewUpdate(ModelMap model, HttpSession session) {
	        HashMap<Integer, Cart> cartItems = (HashMap<Integer, Cart>) session.getAttribute("myCartItems");
	        if (cartItems == null) {
	            cartItems = new HashMap<>();
	        }
	        String keyCart = "cart";
			model.addAttribute("keyCart", keyCart);
	        session.setAttribute("myCartItems", cartItems);
	        return "web/cart";
	    }

	    @RequestMapping(value = "remove/{productId}", method = RequestMethod.GET)
	    public String viewRemove(ModelMap mm, HttpSession session, @PathVariable("productId") int productId) {
	        HashMap<Integer, Cart> cartItems = (HashMap<Integer, Cart>) session.getAttribute("myCartItems");
	        if (cartItems == null) {
	            cartItems = new HashMap<>();
	        }
	        if (cartItems.containsKey(productId)) {
	            cartItems.remove(productId);
	        }
	        session.setAttribute("myCartItems", cartItems);
	        session.setAttribute("myCartTotal", totalPrice(cartItems));
	        session.setAttribute("myCartNum", cartItems.size());
	        return "redirect:/cart.php";
	    }

	    public double totalPrice(HashMap<Integer, Cart> cartItems) {
	        int count = 0;
	        for (Map.Entry<Integer, Cart> list : cartItems.entrySet()) {
	            count += list.getValue().getProduct().getPrice() * list.getValue().getQuantity();
	        }
	        return count;
	    }
	    public Product findIdProduct(int id) {
			Session session = factory.openSession();
			String hql = "FROM Product WHERE ProductID = :proid";
			Query query = session.createQuery(hql);
			query.setInteger("proid", id);
			Product sp = (Product) query.uniqueResult();
			session.close();
			return sp;
		}
}
