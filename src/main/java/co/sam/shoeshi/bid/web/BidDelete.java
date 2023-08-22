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

@WebServlet("/biddelete.do")
public class BidDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BidDelete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BidVO vo = new BidVO();
		
		vo.setBidNo(Integer.parseInt(getInitParameter("bidNo")));
		
		String viewName = "bid/bidlist";
		ViewResolve.forward(request, response, viewName);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
