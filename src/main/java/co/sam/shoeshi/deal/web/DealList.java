package co.sam.shoeshi.deal.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

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

@WebServlet("/deallist.do")
public class DealList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DealList() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		DealService dao = new DealServiceImpl();
		DealVO vo = new DealVO();
		List<HashMap<String, Object>> sellList = new ArrayList<>();
		List<HashMap<String, Object>> buyList = new ArrayList<>();
		
		
		vo.setDealSeller((String)session.getAttribute("clientId"));
		vo.setDealBuyer((String)session.getAttribute("clientId"));
		buyList = dao.dealJoinSelectB(vo);
		sellList = dao.dealJoinSelectS(vo);
		request.setAttribute("deallists", buyList);
		request.setAttribute("deallistb", sellList);
		String viewName = "my/client/deallist";
		ViewResolve.forward(request, response, viewName);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
