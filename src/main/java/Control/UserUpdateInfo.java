package Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.KhachHangDAO;
import Model.Users;

/**
 * Servlet implementation class UserUpdateInfo
 */
@WebServlet("/UpdateInfo")
public class UserUpdateInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserUpdateInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  request.setCharacterEncoding("UTF-8");
	        response.setCharacterEncoding("UTF-8");
	        response.setContentType("text/html; charset=UTF-8");
	        HttpSession session = request.getSession();

	        Users users = (Users) session.getAttribute("acc");

	        request.setAttribute("users", users);

	        int MaKH = Integer.parseInt(request.getParameter("MaKH"));

	        String TenKH = request.getParameter("TenKH");
	        String phone = request.getParameter("phone");
	        String email = request.getParameter("email");
	        String DiaChi = request.getParameter("DiaChi");


	        users.setTenKH(TenKH);
	        users.setPhone(phone);
	        users.setEmail(email);
	        users.setDiaChi(DiaChi);

	        KhachHangDAO dao = new KhachHangDAO();
	        dao.UpdateCustomerInfo(MaKH, TenKH, phone, email, DiaChi);
	        response.sendRedirect("User");
	}

}
