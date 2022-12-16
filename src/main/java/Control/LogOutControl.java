package Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LogOutControl
 */
@WebServlet("/LogOut")
public class LogOutControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
	        response.setContentType("text/html; charset=UTF-8");

	        Cookie[] arr = request.getCookies();
	        if (arr != null) {
	            for (Cookie o : arr) {
	                if (o.getName().equals("cart")) {
	                    o.setMaxAge(0);
	                    response.addCookie(o);
	                }
	            }
	        }
	        HttpSession session = request.getSession();
	        session.removeAttribute("acc");

	        response.sendRedirect("http://localhost:8080/BookStore");
	}

}
