package poly.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class AuthoriIntercepter extends HandlerInterceptorAdapter {
	 @Override
	   public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
	           throws Exception {
		 HttpSession session = request.getSession();
		 if(session.getAttribute("Staff") == null){
		 	response.sendRedirect(request.getContextPath() + "/homeAdmin/login.php");
		 	return false;
		 }
		
	       return true;
	   }
	 
	   @Override
	   public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
	           ModelAndView modelAndView) throws Exception {
	       System.out.println("\n-------- LogInterception.postHandle --- ");
	       System.out.println("Request URL: " + request.getRequestURL());
	      

	       // Ở đây, bạn có thể add các attribute vào modelAndView
	       // Và sử dụng nó trong các View (jsp,..)
	   }
	 
	   @Override
	   public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
	           throws Exception {
	       System.out.println("\n-------- LogInterception.afterCompletion --- ");
	 
	    
	       long endTime = System.currentTimeMillis();
	       System.out.println("Request URL: " + request.getRequestURL());
	       System.out.println("End Time: " + endTime);
	 
	      
	   }
}
