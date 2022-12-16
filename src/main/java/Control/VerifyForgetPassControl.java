
package Control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.filefilter.AndFileFilter;

/**
 * Servlet implementation class VerifyPassControl
 */
@WebServlet("/verifypass")
public class VerifyForgetPassControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public VerifyForgetPassControl() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getRequestDispatcher("/shop-cart/verifypass.jsp").forward(request, response);
	}

	/**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        String numString=request.getParameter("verify");
        try 
        {
        int i = Integer.parseInt(request.getParameter("verify"));

        HttpSession session = request.getSession();

        int a = Integer.parseInt(session.getAttribute("i").toString());

        
        if (i == a) {
            response.sendRedirect("changepass");
        } else {
            request.setAttribute("mess1", "Sai mã xác nhận");
            request.getRequestDispatcher("/shop-cart/verifypass.jsp").forward(request, response);
        }
        }
        catch(NumberFormatException e) {
        	request.setAttribute("mess1", "Vui lòng nhập số");
            request.getRequestDispatcher("/shop-cart/verifypass.jsp").forward(request, response);
        }
    }

}