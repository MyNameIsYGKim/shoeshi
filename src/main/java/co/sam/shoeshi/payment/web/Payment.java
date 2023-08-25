package co.sam.shoeshi.payment.web;

import java.io.IOException;
import java.util.HashMap;

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
import co.sam.shoeshi.product.service.ProductService;
import co.sam.shoeshi.product.service.ProductVO;
import co.sam.shoeshi.product.serviceImpl.ProductServiceImpl;

@WebServlet("/payment.do")
public class Payment extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Payment() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//선언
		response.setContentType("text/html; charset=UTF-8");
		HttpSession session = request.getSession();
		String viewName = "payment/paymentmessage";
		
		ProductService daoP = new ProductServiceImpl();
		HashMap<String, Object> product = new HashMap<String, Object>();
		ProductVO voP = new ProductVO();
		
		BidVO voB = new BidVO();
		BidService daoB = new BidServiceImpl();

		
		DealVO voD = new DealVO();
		DealService daoD = new DealServiceImpl();	
		
		int bidNo = Integer.parseInt(request.getParameter("bidNo"));
		String clientId = (String)session.getAttribute("clientId");
		
		
		/*---------------------------------------------------------------------*/
		
		voB.setBidNo(bidNo);
		voB = daoB.bidSelect(voB);
		
		voP.setProductId(voB.getProductId());
		product = daoP.productJoinSelect(voP);
		request.setAttribute("p", product);
		
		request.setAttribute("dealPrice", voB.getBidPrice());
		
		if(voB.getBidType().equals("SELL")) {
		voD.setDealBuyer(clientId);
		voD.setDealSeller(voB.getClientId());
		}else {
			voD.setDealBuyer(voB.getClientId());
			voD.setDealSeller(clientId);
		}
		voD.setDealPrice(voB.getBidPrice());
		voD.setProductId(voB.getProductId());
		voD.setProductSize(voB.getProductSize());
		voD.setDealState("주문");
		daoD.dealInsert(voD);
		voD = daoD.dealSelectMaxNo();
		
		daoB.bidDelete(voB);
		
		request.setAttribute("dealNo", voD.getDealNo());
		request.setAttribute("clientName", request.getParameter("clientName"));
		request.setAttribute("clientTel", request.getParameter("clientTel"));
		request.setAttribute("clientAddress", request.getParameter("clientAddress"));
		request.setAttribute("payment", request.getParameter("payment"));
		ViewResolve.forward(request, response, viewName);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
