package poly.controller.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import poly.entity.Customer;
import poly.entity.Staff;

@Controller
@RequestMapping("/homeAdmin")
public class HomeADController {
	@Autowired
	SessionFactory factory;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("admin/homeAD");
		return mav;
	}
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(ModelMap model) {
		model.addAttribute("Staff", new Staff());
		ModelAndView mav = new ModelAndView("admin/login");
		return mav;
	}
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(HttpServletRequest request, HttpServletResponse response,
			@ModelAttribute("Staff") Staff staff, ModelMap mm,HttpSession htSes) {
		Staff st = login(staff.getEmail(), staff.getPassword());
		if (st != null) {
			mm.addAttribute("message", "Login Success!");
			htSes.setAttribute("Staff", st);
			return "redirect:/homeAdmin.php";
		} else {
			mm.addAttribute("message", "Incorrect id or password!");
			return "redirect:/homeAdmin/login.php";
		}
	}
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public ModelAndView register() {
		ModelAndView mav = new ModelAndView("admin/register");
		return mav;
	}
	@RequestMapping(value = "logout")
	public String logout(HttpSession htSes) {
		htSes.setAttribute("Staff",null);
		return "redirect:/homeAdmin/login.php";
	}

	public Staff login(String email, String password) {
		try {
			Session session = factory.openSession();
			Transaction transaction = session.beginTransaction();
			Query query = session.createQuery("from Staff s where s.email = :email and s.password = :password");
			query.setString("email", email);
			query.setString("password", password);
			Staff nv = (Staff) query.uniqueResult();
			transaction.commit();
			return nv;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
}
