package poly.controller.admin;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import poly.entity.Product;
import poly.entity.Staff;

@Controller
@RequestMapping("/homeAdmin/employe")
public class manage_employe {
	@Autowired
	SessionFactory factory;
	@RequestMapping(value = "", method = RequestMethod.GET)
	public ModelAndView homePage() {
		ModelAndView mav = new ModelAndView("admin/manage_employe");
		return mav;
	}
	
	@ModelAttribute("Staff")
	public List<Staff> getProduct() {
		Session session = factory.openSession();
		String hql = "FROM Staff where status=1";
		Query query = session.createQuery(hql);
		List<Staff> list = query.list();
		session.close();
		return list;
	}
	@ModelAttribute("role")
	public List getRole() {
		Session session = factory.openSession();
		String hql = "Select s.role FROM Staff s ";
		Query query = session.createQuery(hql);
		List list = query.list();
		session.close();
		return list;
	}
	@RequestMapping(value = "/insertStaff", method = RequestMethod.GET)
	public String insertProduct(ModelMap model) {

		model.addAttribute("staffs", new Staff());
		return "admin/insertStaff";
	}
	@RequestMapping(value = "/insertProduct", method = RequestMethod.POST)
	public String insertProduct(ModelMap model, @ModelAttribute("staffs") Staff staff) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			staff.setStatus(1);
			session.save(staff);
			t.commit();
			model.addAttribute("message", "Insert Successful !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Insert Failed !");
		} finally {
			session.close();
		}
		 return "redirect:/homeAdmin/employe.php";
	}
}
