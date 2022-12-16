package Control;

import DAO.DonHangDAO;
import DAO.KhachHangDAO;
import Model.DonHang;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

import java.io.Console;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Ad_invoice", value = "/Ad_invoice")
public class Ad_invoice extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("text/html; charset=UTF-8");

        DonHangDAO donhangDAO = new DonHangDAO();

        String maDH = request.getParameter("maDH");
        int maTT = Integer.parseInt(request.getParameter("maTT"));
        System.out.println(maTT);
        if(maTT==1)
        	donhangDAO.trangthai(maDH);
        if (maTT==2) {
        	donhangDAO.TrangThaiDangGiao(maDH);
		}
        if(maTT==3){
			donhangDAO.TrangThaiDaGiao(maDH);
		}
        
        if(maTT==5){
    			donhangDAO.TrangThaiHuy(maDH);
    		}

        response.sendRedirect("/BookStore/admin/Ad_invoiceControl?maDH="+maDH);

    }
}
