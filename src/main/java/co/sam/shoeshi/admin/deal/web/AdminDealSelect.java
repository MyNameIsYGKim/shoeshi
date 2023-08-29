package co.sam.shoeshi.admin.deal.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.deal.service.DealService;
import co.sam.shoeshi.deal.service.DealVO;
import co.sam.shoeshi.deal.serviceImpl.DealServiceImpl;

@WebServlet("/admindealselect.do")
public class AdminDealSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminDealSelect() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DealService dao = new DealServiceImpl();
		DealVO vo = new DealVO();
		
		vo.setDealNo(Integer.valueOf(request.getParameter("dealNo")));
		
		vo = dao.dealSelect(vo);
		
		request.setAttribute("n", vo);
		String viewName = "admin/deal/admindealselect";
		
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
