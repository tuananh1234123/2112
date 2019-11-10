package poly.controller.customer;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import poly.entity.Customer;
import poly.entity.Manufacturer;
import poly.entity.Product;


@Transactional
@Controller(value = "HomeControllerOfWed")
public class HomeController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("/home")

	public String homePage2(ModelMap model) {
		Session session = factory.openSession();

		return "web/home";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register() {

		ModelAndView mav = new ModelAndView("web/register");
		mav.addObject("Customer", new Customer());
		return mav;
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String insert(ModelMap model, @ModelAttribute("Customer") Customer customer,HttpSession htSes) {
		String password = customer.getPassword();
		String hash = BCrypt.hashpw(password, BCrypt.gensalt(12));
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			customer.setStatus(1);
			customer.setPassword(hash);
			session.save(customer);
			t.commit();
			model.addAttribute("message", "Create acount success!");
		} catch (Exception e) {
			
			t.rollback();
			
			model.addAttribute("message", "Create acount not success !");
			e.printStackTrace();
			return "redirect:/register.php";
		} finally {
			session.close();
		}
		htSes.setAttribute("Customer", customer);
		return "web/home";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login() {

		ModelAndView mav = new ModelAndView("web/login");
		mav.addObject("Customer", new Customer());
		return mav;
	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	public String login(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("Customer") Customer dn, ModelMap model,HttpSession htSes) {
		Customer customer = findCustomer(dn.getEmail());
		if (customer != null) {
			
			boolean valuate = BCrypt.checkpw(dn.getPassword(),customer.getPassword());
			if(valuate!=true) {
				model.addAttribute("message", "Incorrect id or password!");
			}
			htSes.setAttribute("Customer", customer);
			model.addAttribute("message", "Login success!");
			return "web/home";
		} else {
			model.put("message", "Incorrect id or password!");
			return "web/login";
		}
	}
	@RequestMapping(value = "logout")
	public String logout(HttpSession htSes) {
		htSes.setAttribute("Customer",null);
		return "redirect:/home.php";
	}
	public Customer findCustomer(String email) {
		try {
			
			Session session = factory.openSession();
			Transaction transaction = session.beginTransaction();
			Query query = session.createQuery("from Customer where email = :email");
			query.setString("email", email);
			Customer nv = (Customer) query.uniqueResult();
			transaction.commit();
			return nv;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public Customer login(String email, String password) {
		try {
			
			Session session = factory.openSession();
			Transaction transaction = session.beginTransaction();
			Query query = session.createQuery("from Customer where email = :email and password = :password");
			query.setString("email", email);
			query.setString("password", password);
			Customer nv = (Customer) query.uniqueResult();
			transaction.commit();
			return nv;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	@ModelAttribute("sp")
	public List getManufacturers() {
		Session session = factory.openSession();
		String hql = "SELECT COUNT(t1.product.ProductID) AS SLBan, t1.product.ProductID, t2.productName, t2.price, t2.photo1"
				+ " FROM OrderDetail  t1"
				+ " INNER JOIN Product  t2 ON (t1.product.ProductID = t2.ProductID)"
				+ " GROUP BY t1.product.ProductID, t2.productName, t2.price, t2.photo1"
				+ " ORDER BY SLBan DESC";
		Query query = session.createQuery(hql);
//		query.setMaxResults(5);
		List result = query.list();
		return result;
	}
	@ModelAttribute("sanpham")
	public List product() {
		Session session = factory.openSession();
		String hql1= "FROM Product";
		Query query1= session.createQuery(hql1);
		List<Product> list= query1.list();		
		return list;
	}

}
