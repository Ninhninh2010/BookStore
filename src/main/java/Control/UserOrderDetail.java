package Control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ChiTietDonHangDAO;
import DAO.LoaispDAO;
import DAO.SanPhamDAO;
import Model.ChiTietDonHang;
import Model.LoaiSP;
import Model.SanPham;

@WebServlet(name = "UserOrderDetail", value = "/UserOrderDetail")
public class UserOrderDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		int MaDH = Integer.parseInt(request.getParameter("id"));
		List<ChiTietDonHang> list = new ArrayList<ChiTietDonHang>();
		ChiTietDonHangDAO dao = new ChiTietDonHangDAO();
		list = dao.getChiTietSanPhamID(MaDH);

		List<String> listName = new ArrayList<String>();

		for (ChiTietDonHang o : list) {
			SanPhamDAO d = new SanPhamDAO();
			listName.add(d.getProductById(o.getMaSP()).getTenSP());
		}
		List<LoaiSP> listLSp = new LoaispDAO().getAllloaisp();
		request.setAttribute("listlSp", listLSp);
		List<SanPham> listChuaRaMat = new SanPhamDAO().chuaRaMat();
		request.setAttribute("chuaramat", listChuaRaMat);
		request.setAttribute("size", list.size());
		request.setAttribute("listDetail", list);
		request.setAttribute("listName", listName);
		request.getRequestDispatcher("/shop-cart/UserOrderDetail.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
