package co.sam.shoeshi.deal.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.deal.service.DealService;
import co.sam.shoeshi.deal.service.DealVO;
import co.sam.shoeshi.deal.serviceImpl.DealServiceImpl;




@WebServlet("/bdealdetail.do")
public class BDealDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BDealDetail() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DealService dao = new DealServiceImpl();
		HttpSession session = request.getSession();
		DealVO vo = new DealVO();
		HashMap<String, Object> dealDetail = new HashMap<>();
				
		vo.setDealNo(Integer.valueOf(request.getParameter("dealNo")));
				
		if ("판매".equals(request.getParameter("dealType"))) {
			vo.setDealSeller((String) session.getAttribute("clientId"));
						
		}else if("구매".equals(request.getParameter("dealType"))) {
			vo.setDealBuyer((String) session.getAttribute("clientId"));
			
		}
		
		dealDetail = dao.dealJoinDetailB(vo);
		
						
		String viewName = "my/client/bdealdetail";
		
		request.setAttribute("d", dealDetail);
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
