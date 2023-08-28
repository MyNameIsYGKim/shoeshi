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

@WebServlet("/biddetail.do")
public class BidDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BidDetail() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		BidService dao = new BidServiceImpl();
		BidVO vo = new BidVO();
		HashMap<String, Object> bidDetail = new HashMap<>();

		vo.setBidNo(Integer.valueOf(request.getParameter("bidNo")));

		bidDetail = dao.bidJoinSelect(vo);
		String viewName = "my/bid/sellbiddetail";
		String type = (String) bidDetail.get("bidType");
		System.out.println(type);

		if (type.equals("BUY")) {
			viewName = "my/bid/buybiddetail";
		}

		request.setAttribute("b", bidDetail);
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
