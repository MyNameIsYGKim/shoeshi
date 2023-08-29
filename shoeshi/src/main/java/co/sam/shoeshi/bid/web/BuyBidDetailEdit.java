package co.sam.shoeshi.bid.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.bid.service.BidService;
import co.sam.shoeshi.bid.service.BidVO;
import co.sam.shoeshi.bid.serviceImpl.BidServiceImpl;
import co.sam.shoeshi.common.ViewResolve;

@WebServlet("/buybiddetailedit.do")
public class BuyBidDetailEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BuyBidDetailEdit() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BidService dao = new BidServiceImpl();
		BidVO vo = new BidVO();
		HashMap<String, Object> bidDetail = new HashMap<>();

		vo.setBidNo(Integer.parseInt(request.getParameter("bidNo")));
		vo.setBidPrice(Integer.parseInt(request.getParameter("editPrice")));
		vo.setProductId(Integer.parseInt(request.getParameter("productid")));
		vo.setProductSize(Integer.parseInt(request.getParameter("editSize")));
		dao.bidUpdate(vo);

		/*-----------------------------------------------------*/
		vo.setBidNo(Integer.valueOf(request.getParameter("bidNo")));
		bidDetail = dao.bidJoinSelect(vo);
		String viewName = "my/bid/buybiddetail";
		request.setAttribute("b", bidDetail);
		System.out.println(bidDetail);
		ViewResolve.forward(request, response, viewName);

		/*----------------------------------------------------*/
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
