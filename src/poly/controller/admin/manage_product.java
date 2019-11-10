
package poly.controller.admin;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import poly.entity.Category;
import poly.entity.Manufacturer;
import poly.entity.Product;
import poly.entity.Supplier;

@Transactional
@Controller
@RequestMapping("/homeAdmin/product")
public class manage_product {
	@Autowired
	SessionFactory factory;
	ServletContext context;

	@RequestMapping(value = "", method = RequestMethod.GET)
	public String homePage(ModelMap model) {
	
		return "admin/manage_product";
	}

	@RequestMapping(value = "/insertProduct", method = RequestMethod.GET)
	public String insertProduct(ModelMap model) {

		model.addAttribute("products", new Product());
		return "admin/insertProduct";
	}
	@ModelAttribute("product")
	public List<Product> getProduct() {
		Session session = factory.openSession();
		String hql = "FROM Product where status=1";
		Query query = session.createQuery(hql);
		List<Product> list = query.list();
		session.close();
		return list;
	}
	@RequestMapping(value = "/insertProduct", method = RequestMethod.POST)
	public String insertProduct(ModelMap model, @ModelAttribute("products") Product product) {
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			product.setStatus(1);
			session.save(product);
			t.commit();
			model.addAttribute("message", "Insert Successful !");
		} catch (Exception e) {
			t.rollback();
			model.addAttribute("message", "Insert Failed !");
		} finally {
			session.close();
		}
		return "admin/manage_product";
	}



	@RequestMapping(value = "/fileUpload", headers = "content-type=multipart/*", method = RequestMethod.POST)
	public @ResponseBody Map<String, Object> fileUpload(@RequestParam("hinh1") MultipartFile file,
			@RequestParam("hinh2") MultipartFile file1,
			@RequestParam("hinh3") MultipartFile file2,
			HttpServletRequest request) throws IllegalStateException, IOException {
		Map<String, Object> map = new HashMap<String, Object>();
		context = request.getServletContext();
		if (!"".equals(file.getOriginalFilename())) {
			String dirFile = context.getRealPath("/template/web/images/" + file.getOriginalFilename());
			System.out.println(dirFile);
			File fileDir = new File(dirFile);
			if (!fileDir.exists()) {
				fileDir.mkdir();
			}
			try {
				file.transferTo(fileDir);
				System.out.println("Upload file thành công!");

			} catch (Exception e) {
				System.out.println(e.getMessage());
				System.out.println("Upload file thất bại!");
			}
		}else {
			map.put("Status", 500);
			return map;
		}
		if (!"".equals(file1.getOriginalFilename())) {
			String dirFile1 = context.getRealPath("/template/web/images/" + file1.getOriginalFilename());
			System.out.println(dirFile1);
			File fileDir1 = new File(dirFile1);
			if (!fileDir1.exists()) {
				fileDir1.mkdir();
			}
			try {
				file1.transferTo(fileDir1);
				System.out.println("Upload file thành công!");

			} catch (Exception e) {
				System.out.println(e.getMessage());
				System.out.println("Upload file thất bại!");
			}
		}else {
			map.put("Status", 500);
			return map;
		}
		if (!"".equals(file2.getOriginalFilename())) {
			String dirFile2 = context.getRealPath("/template/web/images/" + file2.getOriginalFilename());
			System.out.println(dirFile2);
			File fileDir2 = new File(dirFile2);
			if (!fileDir2.exists()) {
				fileDir2.mkdir();
			}
			try {
				file2.transferTo(fileDir2);
				System.out.println("Upload file thành công!");

			} catch (Exception e) {
				System.out.println(e.getMessage());
				System.out.println("Upload file thất bại!");
			}
		}else {
			map.put("Status", 500);
			return map;
		}
		map.put("Status", 200);
		return map;
	}

	@ModelAttribute("category")
	public List<Category> getCategories() {
		Session session = factory.openSession();
		String hql = "FROM Category";
		Query query = session.createQuery(hql);
		List<Category> list = query.list();
		session.close();
		return list;
	}

	@ModelAttribute("manufacturer")
	public List<Manufacturer> getManufacturers() {
		Session session = factory.openSession();
		String hql = "FROM Manufacturer";
		Query query = session.createQuery(hql);
		List<Manufacturer> list = query.list();
		session.close();
		return list;
	}

	@ModelAttribute("supplier")
	public List<Supplier> geSuppliers() {
		Session session = factory.openSession();
		String hql = "FROM Supplier";
		Query query = session.createQuery(hql);
		List<Supplier> list = query.list();
		session.close();
		return list;
	}


	@RequestMapping(value = "/delProduct/{proid}", method = RequestMethod.GET)
	public String delete(ModelMap model, @PathVariable("proid") int ProID) {
	

		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {	
			Product nv = (Product) session.get(Product.class, ProID);		
			nv.setStatus(2);
			session.update(nv);
			t.commit();
		} catch (Exception e) {
			t.rollback();
		} finally {
			session.close();
		}
		 return "redirect:/homeAdmin/product.php";
	}

	@RequestMapping(value = "editpro/{proid}", method = RequestMethod.GET)
	public String update(ModelMap model, @PathVariable("proid") int proid) {

		Session session = factory.openSession();
		String hql = "FROM Product WHERE ProductID = :proid";
		Query query = session.createQuery(hql);
		query.setInteger("proid", proid);
		Product sp = (Product) query.uniqueResult();
		session.close();
		model.addAttribute("products", sp);
		return "admin/editProduct";
	}

	@RequestMapping(value = "editpro", method = RequestMethod.POST)
	public String update(ModelMap model, @ModelAttribute("products") Product product) {
		System.out.println(product.getPhoto1()+product.getPhoto2());
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {
			product.setStatus(1);
			;
			session.update(product);
			t.commit();
			model.addAttribute("message", "Update Successful !");
		} catch (Exception e) {
			e.printStackTrace();
			t.rollback();
			model.addAttribute("message", "Update Failed !");
		} finally {
			session.close();
		}
		 return "redirect:/homeAdmin/product.php";
	}
	
}
