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

import DAO.DonHangDAO;
import DAO.KhachHangDAO;
import DAO.SanPhamDAO;
import Model.Cart;
import Model.SanPham;
import Model.Users;

/**
 * Servlet implementation class PaymentControl
 */
@WebServlet("/Pay")
public class PaymentControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

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
		Cart cart = new Cart(txt, list);
		String name_raw = request.getParameter("name");
		String phone_raw = request.getParameter("phone");
		String email_raw = request.getParameter("email");
		String address_raw = request.getParameter("address");

		KhachHangDAO khachHangDAO = new KhachHangDAO();

		HttpSession session = request.getSession();
		Users users = (Users) session.getAttribute("acc");

		Users khachHang;

		if (users == null) {
			if (khachHangDAO.getKhachHangByPhone(phone_raw) == null) {
				khachHangDAO.addKhachHang(name_raw, address_raw, phone_raw, email_raw);
			}
			khachHang = khachHangDAO.getKhachHangByPhone(phone_raw);

		} else {
			khachHang = users;
		}

		DonHangDAO donHangDAO = new DonHangDAO();
		donHangDAO.addOrder(khachHang, cart, name_raw, phone_raw, email_raw, address_raw);

//        SendMailXacNhanDonHang sm = new SendMailXacNhanDonHang();
//        boolean test = sm.sendMail(khachHang.getEmail(), khachHang.getTenKH());

		Cookie c = new Cookie("cart", "");
		c.setMaxAge(0);
		response.addCookie(c);
		response.sendRedirect("CartControl");
	}

}
