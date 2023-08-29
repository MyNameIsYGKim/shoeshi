package co.sam.shoeshi.client.web;

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

@WebServlet("/mypage.do")
public class Mypage extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Mypage() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		BidService bdao = new BidServiceImpl();
		BidVO svo = new BidVO();
		BidVO bvo = new BidVO();
		HashMap<String, Object> scount = new HashMap<>();
		HashMap<String, Object> bcount = new HashMap<>();
		bvo.setClientId((String) session.getAttribute("clientId"));
		bvo.setBidType("BUY");
		svo.setClientId((String) session.getAttribute("clientId"));
		svo.setBidType("SELL");
		
		scount = bdao.countDeal(svo);
		bcount = bdao.countDeal(bvo);
		
		request.setAttribute("scount", scount);
		request.setAttribute("bcount", bcount);
		
		String viewName = "my/client/mypage";
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
