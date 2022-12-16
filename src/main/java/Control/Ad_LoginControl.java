package Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.LoginDAO;
import Model.Users;

/**
 * Servlet implementation class Ad_LoginControl
 */
@WebServlet("/Ad_LoginControl")
public class Ad_LoginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
	        response.setContentType("text/html; charset=UTF-8");
	        HttpSession session = request.getSession();
	        if (session.getAttribute("acc") != null) {
	            response.sendRedirect("http://localhost:8080/BookStore");
	        } else {
	            request.getRequestDispatcher("/AdminF/admin/loginad.jsp").forward(request, response);
	        }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
	        response.setContentType("text/html; charset=UTF-8");

	        String username = request.getParameter("username");
	        String password = request.getParameter("password");

	       

	        LoginDAO dao = new LoginDAO();
	        Users a = dao.login(username, password);
	        if (a == null) {
	            request.setAttribute("mess", "Sai tên đăng nhập hoặc mật khẩu");
	            request.getRequestDispatcher("/AdminF/admin/loginad.jsp").forward(request, response);
	        } else {
	            HttpSession session = request.getSession();
	            int user = a.getIsUser();
	            int admin = a.getIsAdmin();
	            int shipper = a.getIsShiper();
	            if (user == 1 && admin == 1 && shipper == 0) {
	                session.setAttribute("accad", a);
	                response.sendRedirect("http://localhost:8080/BookStore/admin");
	            } else {
	                request.setAttribute("mess", "Bạn phải là Admin");
	                request.getRequestDispatcher("/AdminF/admin/loginad.jsp").forward(request, response);
	            }
	            //response.sendRedirect("http://localhost:8080/Apple_store");
	        }
	}

}
