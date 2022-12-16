package Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DonHangDAO;

/**
 * Servlet implementation class Ad_Shipping
 */
@WebServlet("/Ad_Shipping")
public class Ad_Shipping extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
	        response.setContentType("text/html; charset=UTF-8");

	        DonHangDAO donhangDAO = new DonHangDAO();

	        String maDH = request.getParameter("maDH");

	        donhangDAO.TrangThaiDangGiao(maDH);

	        response.sendRedirect("/BookStore/admin/Ad_invoiceControl?maDH="+maDH);
	}

}
