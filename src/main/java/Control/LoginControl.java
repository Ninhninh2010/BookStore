package Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.LoginDAO;
import Model.Users;

/**
 * Servlet implementation class LoginControl
 */
@WebServlet("/Login")
public class LoginControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String username = request.getParameter("username");
		String password = request.getParameter("password");

		LoginDAO dao = new LoginDAO();
		Users a = dao.login(username, password);
		if (a == null) {
			response.sendRedirect("http://localhost:8080/BookStore?var=1");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("acc", a);
			int user = a.getIsUser();
			int admin = a.getIsAdmin();
			int shipper = a.getIsShiper();
			if (user == 1 && admin == 0 && shipper == 0) {
				response.sendRedirect("http://localhost:8080/BookStore");
			} else {
				response.sendRedirect("http://localhost:8080/BookStore?var=1");
			}
			// response.sendRedirect("http://localhost:8080/Apple_store");
		}

	}

}
