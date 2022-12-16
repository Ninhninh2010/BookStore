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
 * Servlet implementation class SearchControl
 */
@WebServlet(urlPatterns = { "/search" })
public class SearchControl extends HttpServlet {
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");

		SanPhamDAO sanPhamDAO = new SanPhamDAO();

		List<SanPham> list;

		String txtSearch = request.getParameter("txt");

		list = sanPhamDAO.searchByName(txtSearch);
		List<SanPham> listChuaRaMat = new SanPhamDAO().chuaRaMat();
		List<LoaiSP> listLSp = new LoaispDAO().getAllloaisp();
		request.setAttribute("listlSp", listLSp);
		request.setAttribute("listSP", list);
		request.setAttribute("listSPSize", list.size());
		request.setAttribute("chuaramat", listChuaRaMat);
		request.getRequestDispatcher("/shop-cart/productSearch.jsp").forward(request, response);

	}

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		processRequest(req, resp);

	}
	/*
	 * protected void doGet(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException { // TODO Auto-generated
	 * method stub
	 * response.getWriter().append("Served at: ").append(request.getContextPath());
	 * }
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 *//*
		 * protected void doPost(HttpServletRequest request, HttpServletResponse
		 * response) throws ServletException, IOException { // TODO Auto-generated
		 * method stub doGet(request, response); }
		 */

}
