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
import co.sam.shoeshi.common.ViewResolve;
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
		BidVO vo2 = new BidVO();
		HttpSession session = request.getSession();
		BidService dao2 = new BidServiceImpl();
		response.setContentType("text/html; charset=UTF-8");
		vo2.setProductId(Integer.parseInt(request.getParameter("productId")));
		vo2.setClientId((String) session.getAttribute("clientId"));
		vo2.setProductSize(Integer.parseInt(request.getParameter("productSize")));

		if (request.getParameter("buttonType").equals("bid")) {
			vo2.setBidPrice(Integer.parseInt(request.getParameter("bidPrice")));
			vo2.setBidType(request.getParameter("bidType"));

			int n = dao2.bidInsert(vo2);
			if (n == 0) {
				request.setAttribute("alertBid", "입찰등록 실패");
			} else {
				request.setAttribute("alertBid", request.getParameter("bidType2") + "입찰 등록");
			}
		} else if (request.getParameter("buttonType").equals("deal")) {
			try {
				if (request.getParameter("bidType").equals("BUY")) {
					vo2.setBidType("SELL");
					vo2 = dao2.bidSelectBuy(vo2);
					vo2.setBidNo(vo2.getBidNo());
				} else if (request.getParameter("bidType").equals("SELL")) {
					vo2.setBidType("BUY");
					vo2 = dao2.bidSelectSell(vo2);
					vo2.setBidNo(vo2.getBidNo());
				}
				int n = dao2.bidDelete(vo2);
				if (n == 0) {
					request.setAttribute("alertBid", request.getParameter("bidType2") + " 실패");
				} else {
					request.setAttribute("alertBid", request.getParameter("bidType2") + " 완료");
				}
			} catch (Exception e) {
				request.setAttribute("alertBid", "남은 입찰정보가 본인이 등록한 입찰이거나, "+ request.getParameter("bidType2") +"할 입찰정보가 없습니다.");
			}
		}
		ProductService dao = new ProductServiceImpl();
		HashMap<String, Object> product = new HashMap<String, Object>();
		ProductVO vo = new ProductVO();
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		product = dao.productJoinSelect(vo);
		request.setAttribute("p", product);

		String viewName = "product/productselect";
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
