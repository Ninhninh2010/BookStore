package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.LoaispDAO;
import DAO.SanPhamDAO;
import Model.Cart;
import Model.LoaiSP;
import Model.SanPham;
import Model.Users;

/**
 * Servlet implementation class CartControl
 */
@WebServlet("/CartControl")
public class CartControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();
		Users users = (Users) session.getAttribute("acc");

		SanPhamDAO dao = new SanPhamDAO();
		List<SanPham> list = dao.getAll();
		Cookie[] arr = request.getCookies();
		String txt = "";
		if (arr != null) {
			for (Cookie o : arr) {
				if (o.getName().equals("cart")) {
					txt += o.getValue();
				}
			}
		}
		LoaispDAO loaispDAO = new LoaispDAO();
		List<LoaiSP> listlsp = loaispDAO.getAllloaisp();
		request.setAttribute("listlsp", listlsp);
		Cart cart = new Cart(txt, list);
		request.setAttribute("user", users);
		request.setAttribute("cart", cart);
		request.getRequestDispatcher("/shop-cart/cart.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
