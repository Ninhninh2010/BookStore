package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Model.LoaiSP;
import Model.SanPham;
import DAO.LoaispDAO;
import DAO.SanPhamDAO;

/**
 * Servlet implementation class productDetailControl
 */
@WebServlet("/productDetail")
public class productDetailControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String id_raw = request.getParameter("maSP");
		int id = Integer.parseInt(id_raw);
		String madm=new SanPhamDAO().getmaDM(id_raw);
		SanPham sanPham = new SanPhamDAO().getProductById(id);
		List<LoaiSP>listLSp=new LoaispDAO().getAllloaisp();
		List<SanPham> listChuaRaMat = new SanPhamDAO().chuaRaMat();
		List<SanPham> listsplq = new SanPhamDAO().getAllsanphamtop3theodm(madm);
		request.setAttribute("listsplq", listsplq);
		request.setAttribute("SanPham", sanPham);
		request.setAttribute("listlSp", listLSp);
		request.setAttribute("chuaramat", listChuaRaMat);
		request.getRequestDispatcher("/shop-cart/productDetail.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}
