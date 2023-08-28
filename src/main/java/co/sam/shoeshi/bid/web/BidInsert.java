package co.sam.shoeshi.bid.web;

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
import co.sam.shoeshi.client.service.ClientService;
import co.sam.shoeshi.client.service.ClientVO;
import co.sam.shoeshi.client.serviceImpl.ClientServiceImpl;
import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.payment.service.PaymentService;
import co.sam.shoeshi.payment.service.PaymentVO;
import co.sam.shoeshi.payment.serviceImple.PaymentServiceImpl;
import co.sam.shoeshi.product.service.ProductService;
import co.sam.shoeshi.product.service.ProductVO;
import co.sam.shoeshi.product.serviceImpl.ProductServiceImpl;

@WebServlet("/bidinsert.do")
public class BidInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BidInsert() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();

		String viewName = "product/productselect";
		String viewName2 = "payment/paymentform";
		String clientId = (String)session.getAttribute("clientId");

		ProductService dao = new ProductServiceImpl();
		HashMap<String, Object> product = new HashMap<String, Object>();
		ProductVO vo = new ProductVO();
		vo.setProductId(Integer.parseInt(request.getParameter("productId")));
		product = dao.productJoinSelect(vo);
		request.setAttribute("p", product);
		
		BidVO vo2 = new BidVO();
		BidService dao2 = new BidServiceImpl();
		response.setContentType("text/html; charset=UTF-8");
		vo2.setProductId(Integer.parseInt(request.getParameter("productId")));
		vo2.setClientId(clientId);
		vo2.setProductSize(Integer.parseInt(request.getParameter("productSize")));

		ClientVO vo3 = new ClientVO();
		ClientService dao3 = new ClientServiceImpl();
		
		PaymentVO vo4 = new PaymentVO();
		PaymentService dao4 = new PaymentServiceImpl();
		vo4.setClientId(clientId);
		vo4 = dao4.paymentSelect(vo4);
		request.setAttribute("pay", vo4);
		
		
		if (request.getParameter("buttonType").equals("bid")) {
			vo2.setBidPrice(Integer.parseInt(request.getParameter("bidPrice")));
			vo2.setBidType(request.getParameter("bidType"));

			int n = dao2.bidInsert(vo2);
			if (n == 0) {
				request.setAttribute("alertBid", "입찰등록 실패");
				ViewResolve.forward(request, response, viewName);
			} else {
				request.setAttribute("alertBid", request.getParameter("bidType2") + "입찰 등록");
				ViewResolve.forward(request, response, viewName);
			}
		} else if (request.getParameter("buttonType").equals("deal")) {
			try {

				if (request.getParameter("bidType").equals("BUY")) {
					vo2.setBidType("SELL");
					vo2 = dao2.bidSelectBuy(vo2);
				} else if (request.getParameter("bidType").equals("SELL")) {
					vo2.setBidType("BUY");
					vo2 = dao2.bidSelectSell(vo2);
				}
				vo2 = dao2.bidSelect(vo2);
				request.setAttribute("b", vo2);
				vo3.setClientId(clientId);
				vo3 = dao3.clientSelect(vo3);
				request.setAttribute("c", vo3);
				request.setAttribute("alertBid","\""+vo2.getBidNo()+"\""+"이안에 값이 없다면 try catch오류");
				ViewResolve.forward(request, response, viewName2);
			} catch (Exception e) {
				request.setAttribute("alertBid",request.getParameter("bidType2")+"할 수 있는 입찰이 없거나, " + "본인이 등록한 입찰정보에 대해서는 " + request.getParameter("bidType2") + "할 수 없습니다.");
				ViewResolve.forward(request, response, viewName);
			}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
