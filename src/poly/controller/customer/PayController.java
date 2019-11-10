package poly.controller.customer;
import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import poly.entity.Cart;
import poly.entity.Customer;
import poly.entity.Order;
import poly.entity.OrderDetail;



@Transactional
@Controller
public class PayController {
	@Autowired
	SessionFactory factory;

	    @RequestMapping(value = "buy", method = RequestMethod.GET)
	    public String viewAdd(ModelMap model, HttpSession session) {
	    	HashMap<Integer, Cart> cartItems = (HashMap<Integer, Cart>) session.getAttribute("myCartItems");
			if(cartItems==null) {
				model.addAttribute("message", "Please buy Product ");
				return "redirect:/cart.php";
			}
	        Customer customer = (Customer) session.getAttribute("Customer");
	        if (customer == null) {
	        	
	        	model.addAttribute("message", "Please Login acount");
	        	return "redirect:/login.php";
	        }
	  
	        return "web/choiceMethodPay";
	    }
	  
		@RequestMapping(value = "pay_directly", method = RequestMethod.GET)
		public String insertOrder(ModelMap model,HttpSession Httpsession) {
			HashMap<Integer, Cart> cartItems = (HashMap<Integer, Cart>) Httpsession.getAttribute("myCartItems");
			Customer customer = (Customer)Httpsession.getAttribute("Customer");
			Order order= new Order();
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {	
				order.setOrderDate(new Timestamp(new Date().getTime()));
				order.setDescription("Please nothing");
				order.setPayment(false);
				order.setStatus(1);
				order.setCustomer(customer);
				session.save(order);
				System.out.println(order);
				t.commit();
				
			} catch (Exception e) {	e.printStackTrace();
				t.rollback(); 
				
				model.addAttribute("message", "Insert Failed !");
				return "redirect:/buy.php";
			} finally {
				session.close();
			}
			OrderDetail(order,cartItems);			
			model.addAttribute("message", "Payment Success");
			return "redirect:/sussces.php";
		}
		 @RequestMapping(value = "sussces", method = RequestMethod.GET)
		    public String Sussces(ModelMap model, HttpSession session) {
		   
		        model.addAttribute("thanks", "Thank you for using our service, please wait for store staff to confirm");
		        model.addAttribute("message", "Payment Success");
		        return "web/success";
		    }
		public void OrderDetail(Order order,HashMap<Integer, Cart> cartItems) {
			Session session = factory.openSession();
			Transaction t = session.beginTransaction();
			try {
			
			for (Map.Entry<Integer, Cart> entry : cartItems.entrySet()) {
			OrderDetail detail = new OrderDetail();
			detail.setDiscount(0);
			detail.setOrder(order);
			detail.setPrice(entry.getValue().getProduct().getPrice());
			detail.setQuantity(entry.getValue().getQuantity());
			detail.setProduct(entry.getValue().getProduct());
			session.save(detail);
			
			 }
			t.commit();
			} catch (Exception e) {	e.printStackTrace();
				t.rollback(); 
			
			} finally {
				session.close();
			}
		}

	    
}
