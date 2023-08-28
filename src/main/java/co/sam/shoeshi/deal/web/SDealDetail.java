package co.sam.shoeshi.deal.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.deal.service.DealService;
import co.sam.shoeshi.deal.service.DealVO;
import co.sam.shoeshi.deal.serviceImpl.DealServiceImpl;

@WebServlet("/sdealdetail.do")
public class SDealDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SDealDetail() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DealService dao = new DealServiceImpl();
		HttpSession session = request.getSession();
		DealVO vo = new DealVO();
		HashMap<String, Object> dealDetail = new HashMap<>();
		
		System.out.println(request.getParameter("dealType")+request.getParameter("dealNo")+session.getAttribute("clientId"));
		vo.setDealNo(Integer.valueOf(request.getParameter("dealNo")));
		ObjectMapper ob = new ObjectMapper();
		System.out.println(("판매".equals(request.getParameter("dealType"))));
		
		if ("판매".equals(request.getParameter("dealType"))) {
			vo.setDealSeller((String) session.getAttribute("clientId"));
						
		}else if("구매".equals(request.getParameter("dealType"))) {
			vo.setDealBuyer((String) session.getAttribute("clientId"));
			
		}
		String chk= ob.writeValueAsString(vo);
		System.out.println(chk);
		dealDetail = dao.dealJoinDetailB(vo);
		
		chk= ob.writeValueAsString(dealDetail);
		System.out.println(chk);
				
		String viewName = "my/client/sdealdetail";
		
		request.setAttribute("d", dealDetail);
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
