package Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.KhachHangDAO;
import DAO.LoginDAO;
import Model.Users;

/**
 * Servlet implementation class User_PasswordControl
 */
@WebServlet("/PasswordChange")
public class User_PasswordControl extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        // TODO Auto-generated method stub
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");
        HttpSession session = request.getSession();
        Users users = (Users) session.getAttribute("acc");
        String oldPass = request.getParameter("oldPass");
        String newPass1 = request.getParameter("newPass1");
        String newPass2 = request.getParameter("newPass2");



        LoginDAO dao = new LoginDAO();
        Users a = dao.login(users.getTenTK(), oldPass);

        if (a != null) {
            if (newPass1.equals(newPass2)) {
                KhachHangDAO dao2 = new KhachHangDAO();
                dao2.ChangePassWord(users.getMaKH(), newPass1);
                System.out.println("hello 2");
                session.removeAttribute("acc");
                response.sendRedirect("http://localhost:8080/BookStore");
            } else {
                System.out.println("hello 3");
                response.sendRedirect("User");
            }
        } else {
            System.out.println("hello 1");
            response.sendRedirect("User");

        }
    }

}
