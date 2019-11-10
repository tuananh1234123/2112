package poly.controller.customer;

import java.sql.Timestamp;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.Mapping;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payment;
import com.paypal.base.rest.PayPalRESTException;
import poly.config.PaypalPaymentIntent;
import poly.config.PaypalPaymentMethod;
import poly.entity.Cart;
import poly.entity.Customer;
import poly.entity.Order;
import poly.entity.OrderDetail;
import poly.Services.PaypalService;
import poly.validator.Utils;

@Controller
public class PaymentController {
	@Autowired
	SessionFactory factory;
	public static final String URL_PAYPAL_SUCCESS = "pay/success";
	public static final String URL_PAYPAL_CANCEL = "pay/cancel";
	
	private Logger log = LoggerFactory.getLogger(getClass());
	
	@Autowired
	private PaypalService paypalService;
	

	
	@RequestMapping(value = "pay_by_paypal",method = RequestMethod.POST)
	public String pay(HttpSession Httpsession,HttpServletRequest request,@RequestParam("price") double price ){
		String cancelUrl = Utils.getBaseURL(request) + "/" + URL_PAYPAL_CANCEL+".php";
		String successUrl = Utils.getBaseURL(request) + "/" + URL_PAYPAL_SUCCESS+".php";
		insertOrder(Httpsession);
		try {
			Payment payment = paypalService.createPayment(
					price, 
					"USD", 
					PaypalPaymentMethod.paypal, 
					PaypalPaymentIntent.sale,
					"payment description", 
					cancelUrl, 
					successUrl);
			for(Links links : payment.getLinks()){
				if(links.getRel().equals("approval_url")){
					return "redirect:" + links.getHref();
				}
			}
		} catch (PayPalRESTException e) {
			log.error(e.getMessage());
		}
		return "redirect:/buy.php";
	}

	@RequestMapping(URL_PAYPAL_CANCEL)
	public String cancelPay(){
		return "redirect:/buy.php";
	}

	@RequestMapping(URL_PAYPAL_SUCCESS)
	public String successPay(@RequestParam("paymentId") String paymentId, @RequestParam("PayerID") String payerId){
		try {
			Payment payment = paypalService.executePayment(paymentId, payerId);
			if(payment.getState().equals("approved")){
				return "web/success";
			}
		} catch (PayPalRESTException e) {
			log.error(e.getMessage());
		}
		return "redirect:/buy.php";
	}
	public void insertOrder(HttpSession Httpsession) {
		HashMap<Integer, Cart> cartItems = (HashMap<Integer, Cart>) Httpsession.getAttribute("myCartItems");
		Customer customer = (Customer)Httpsession.getAttribute("Customer");
		Order order= new Order();
		Session session = factory.openSession();
		Transaction t = session.beginTransaction();
		try {	
			order.setOrderDate(new Timestamp(new Date().getTime()));
			order.setDescription("Please nothing");
			order.setPayment(true);
			order.setStatus(1);
			order.setCustomer(customer);
			session.save(order);
			System.out.println(order);
			t.commit();
			
		} catch (Exception e) {	e.printStackTrace();
			t.rollback(); 
			
		} finally {
			session.close();
		}
		OrderDetail(order,cartItems);			

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