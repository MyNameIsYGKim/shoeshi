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

import co.sam.shoeshi.bid.service.BidService;
import co.sam.shoeshi.bid.service.BidVO;
import co.sam.shoeshi.bid.serviceImpl.BidServiceImpl;
import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.deal.service.DealService;
import co.sam.shoeshi.deal.service.DealVO;
import co.sam.shoeshi.deal.serviceImpl.DealServiceImpl;

@WebServlet("/sdeallist.do")
public class SDealList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SDealList() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		DealService dao = new DealServiceImpl();
		BidService bdao = new BidServiceImpl();
		BidVO bvo = new BidVO();
		DealVO vo = new DealVO();
		List<HashMap<String, Object>> sellList = new ArrayList<>();
		HashMap<String, Object> count = new HashMap<>();
		bvo.setClientId((String) session.getAttribute("clientId"));
		bvo.setBidType("SELL");
		vo.setDealSeller((String) session.getAttribute("clientId"));
		
		count = bdao.countDeal(bvo);
		sellList = dao.dealJoinSelectS(vo);

		request.setAttribute("count", count);
		request.setAttribute("deallists", sellList);
		String viewName = "my/client/sdeallist";
		ViewResolve.forward(request, response, viewName);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
