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
 * Servlet implementation class MainControl
 */
@WebServlet("")
public class MainControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		String testString = request.getParameter("var");
		if (testString != null) {
			if (testString.equals("1"))
				request.setAttribute("mess", "sai mat khau hoac ten");
		}
		List<SanPham> list = new SanPhamDAO().newProduct();
		List<SanPham> listNoiBat = new SanPhamDAO().featuredProduct();
		List<SanPham> listChuaRaMat = new SanPhamDAO().chuaRaMat();
		List<LoaiSP> listLSp = new LoaispDAO().getAllloaisp();
		request.setAttribute("listNew", list);
		request.setAttribute("size", list.size());
		request.setAttribute("listlSp", listLSp);
		request.setAttribute("featured", listNoiBat);
		request.setAttribute("chuaramat", listChuaRaMat);
		request.getRequestDispatcher("/shop-cart/index.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
