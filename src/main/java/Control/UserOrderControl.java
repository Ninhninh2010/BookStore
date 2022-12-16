package Control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.DonHangDAO;
import DAO.KhachHangDAO;
import DAO.LoaispDAO;
import DAO.SanPhamDAO;
import Model.DonHang;
import Model.LoaiSP;
import Model.SanPham;
import Model.Users;

/**
 * Servlet implementation class User_OrderControl
 */
@WebServlet(name = "UserOrderControl", value = "/UserOrder")
public class UserOrderControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		HttpSession session = request.getSession();
		Users users = (Users) session.getAttribute("acc");

		KhachHangDAO dao = new KhachHangDAO();
		Users khachHang = new Users();
		khachHang = dao.getKhachHangByMaTK(users.getMaKH());

		DonHangDAO dHangDAO = new DonHangDAO();
		List<DonHang> list = new ArrayList<DonHang>();
		list = dHangDAO.loadOrderByMaKH(khachHang.getMaKH());
		List<String> listName = new ArrayList<String>();
		for (DonHang o : list) {
			KhachHangDAO d = new KhachHangDAO();
			listName.add(d.getKhachHangByMaKH(o.getMaKH()).getTenKH());
		}

		List<LoaiSP> listLSp = new LoaispDAO().getAllloaisp();
		request.setAttribute("listlSp", listLSp);
		request.setAttribute("size", listName.size());
		request.setAttribute("listName", listName);
		request.setAttribute("list", list);
		List<SanPham> listChuaRaMat = new SanPhamDAO().chuaRaMat();
		request.setAttribute("chuaramat", listChuaRaMat);

		request.getRequestDispatcher("/shop-cart/UserOrder.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
