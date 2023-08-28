package co.sam.shoeshi.bid.web;

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

@WebServlet("/bidlist.do")
public class BidList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BidList() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		BidVO vo = new BidVO();
		BidService dao = new BidServiceImpl();
		List<HashMap<String, Object>> bidList = new ArrayList<>();
		HashMap<String, Object> dealCount = new HashMap<String, Object>();
		
		String type = request.getParameter("bidType");
		vo.setClientId((String)session.getAttribute("clientId"));
		vo.setBidType(request.getParameter("bidType"));
		
		bidList = dao.bidJoinSelectList(vo);
		dealCount = dao.countDeal(vo);
		
		request.setAttribute("bidList", bidList);
		request.setAttribute("count", dealCount);
		String viewName = "my/bid/buybidlist";
		if(type.equals("SELL")) {
			viewName = "my/bid/sellbidlist";
		}
		
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
