package DAO;

import java.util.List;

import Model.SanPham;

public class testsss {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		List<SanPham> listsplq = new SanPhamDAO().getAllsanphamtop3theodm("1");
		
		for(SanPham o:listsplq)
			System.out.println(o.getTenSP());
	}

}
