package co.sam.shoeshi.bid.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.bid.service.BidService;
import co.sam.shoeshi.bid.service.BidVO;
import co.sam.shoeshi.bid.serviceImpl.BidServiceImpl;
import co.sam.shoeshi.common.ViewResolve;

@WebServlet("/bidedit.do")
public class BidEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BidEdit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BidService dao = new BidServiceImpl();
		BidVO vo = new BidVO();
		
		vo.setBidNo(Integer.valueOf(request.getParameter("bidNo")));
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		vo.setBidPrice(Integer.valueOf(request.getParameter("bidPrice")));
		vo.setBidType(request.getParameter("bidType"));
		vo.setClientId(request.getParameter("clientId"));
		vo.setProductSize(Integer.valueOf(request.getParameter("productSize")));
		
		String viewName = "bid/bidselect";
		vo = dao.bidSelect(vo);
		request.setAttribute("n", vo);
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
