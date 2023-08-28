package co.sam.shoeshi.admin.deal.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.deal.service.DealService;
import co.sam.shoeshi.deal.service.DealVO;
import co.sam.shoeshi.deal.serviceImpl.DealServiceImpl;


@WebServlet("/admindealmanage2.do")
public class AdminDealManage2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AdminDealManage2() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DealService dao = new DealServiceImpl();
		List<DealVO> deals2 = new ArrayList<>();
		List<DealVO> states1 = new ArrayList<>();
		List<DealVO> states2 = new ArrayList<>();
		List<DealVO> states3 = new ArrayList<>();
		
		deals2 = dao.dealSelectList2();
		states1 = dao.dealStateList1();
		states2 = dao.dealStateList2();
		states3 = dao.dealStateList3();
		request.setAttribute("deals2", deals2);
		request.setAttribute("states1", states1);
		request.setAttribute("states2", states2);
		request.setAttribute("states3", states3);
		
		String viewName = "admin/deal/admindealmanage2";
		ViewResolve.forward(request, response, viewName);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
