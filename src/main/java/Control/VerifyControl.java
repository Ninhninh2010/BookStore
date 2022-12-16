package Control;

import DAO.LoaispDAO;
import DAO.SignUpDAO;
import Model.LoaiSP;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class VerifyControl
 */
@WebServlet("/verify")
public class VerifyControl extends HttpServlet {
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public VerifyControl() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	List<LoaiSP>listLSp=new LoaispDAO().getAllloaisp();
		request.setAttribute("listlSp", listLSp);
    	request.getRequestDispatcher("/shop-cart/verify.jsp").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        
        String veri = request.getParameter("verify");
        int verify = Integer.parseInt(veri);

        HttpSession session = request.getSession();
        int i = Integer.parseInt(session.getAttribute("verify").toString());

        if (verify == i) {
            SignUpDAO dao = new SignUpDAO();
            String fullname = session.getAttribute("fullname").toString();
            String username = session.getAttribute("username").toString();
            String email = session.getAttribute("email").toString();
            String phone = session.getAttribute("phone").toString();
            String pass = session.getAttribute("password").toString();
            String repass = session.getAttribute("repassword").toString();

            dao.signup(fullname, username, email, phone, pass, repass);
            response.sendRedirect("http://localhost:8080/BookStore");
        } else {
            request.setAttribute("mess2", "Sai mã xác nhận");
            request.getRequestDispatcher("/shop-cart/verify.jsp").forward(request, response);
        }
    }

}