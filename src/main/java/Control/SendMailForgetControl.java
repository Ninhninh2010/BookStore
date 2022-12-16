
package Control;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.LoaispDAO;
import DAO.LoginDAO;
import DAO.SignUpDAO;
import Model.LoaiSP;
import Model.SendMailPass;
import Model.Users;

/**
 * Servlet implementation class SendMailForgetControl
 */
@WebServlet("/email")
public class SendMailForgetControl extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	List<LoaiSP> listLSp = new LoaispDAO().getAllloaisp();
		request.setAttribute("listlSp", listLSp);
    	request.getRequestDispatcher("/shop-cart/EmailVerify.jsp").forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        HttpSession session = request.getSession();

        String email = request.getParameter("email");

        SendMailPass sm = new SendMailPass();

        SignUpDAO lib = new SignUpDAO();

        LoginDAO dao = new LoginDAO();
        Users a = dao.CheckUsers(email);

        if (a == null) {
            request.setAttribute("mess1", "Email không tồn tại");
            request.getRequestDispatcher("/shop-cart/EmailVerify.jsp").forward(request, response);
        } else {
            int i = lib.getRandom();
            boolean test = sm.sendMail(email, i, a.getTenKH());
            session.setAttribute("i", i);
            session.setAttribute("MaKH", a.getMaKH());
            response.sendRedirect("http://localhost:8080/BookStore/verifypass");
        }
    }

}