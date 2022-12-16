package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.LoaispDAO;
import DAO.SanPhamDAO;
import Model.LoaiSP;
import Model.SanPham;

/**
 * Servlet implementation class SanPhamControl
 */
@WebServlet("/loaisp")
public class SanPhamControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String maloai = request.getParameter("maLSP"); // 1
		List<SanPham> listSP = new SanPhamDAO().getAllsanphamtheodm(maloai);
		List<SanPham> listChuaRaMat = new SanPhamDAO().chuaRaMat();

		List<LoaiSP> listLSp = new LoaispDAO().getAllloaisp();
		request.setAttribute("listlSp", listLSp);
		request.setAttribute("listSP", listSP);
		request.setAttribute("listSPSize", listSP.size());
		request.setAttribute("maLSP", maloai);
		request.setAttribute("chuaramat", listChuaRaMat);
		request.getRequestDispatcher("/shop-cart/products.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
