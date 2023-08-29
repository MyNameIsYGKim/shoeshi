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

@WebServlet("/biddelete.do")
public class BidDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BidDelete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		BidVO vo = new BidVO();
		BidService dao = new BidServiceImpl();
		List<HashMap<String, Object>> bidList = new ArrayList<>();
		HashMap<String, Object> dealCount = new HashMap<String, Object>();
		
		String viewName = "";
		String type = "";
		
		vo.setBidNo(Integer.parseInt(request.getParameter("bidNo")));
		vo.setClientId((String)session.getAttribute("clientId"));
		vo = dao.bidSelect(vo);
		dao.bidDelete(vo);
		type = vo.getBidType();
		
		bidList = dao.bidJoinSelectList(vo);
		dealCount = dao.countDeal(vo);
		
		request.setAttribute("bidList", bidList);
		request.setAttribute("count", dealCount);
		

		
		if(type.equals("SELL")) {
		viewName = "my/bid/sellbidlist";
		}else {
		viewName = "my/bid/buybidlist";
		}

		ViewResolve.forward(request, response, viewName);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
