package co.sam.shoeshi.client.web;

import java.io.IOException;
import java.util.ArrayList;
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

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		BidVO vo = new BidVO(); 
		BidService dao = new BidServiceImpl();
		List<BidVO> vos = new ArrayList<BidVO>();
		List<BidVO> vob = new ArrayList<BidVO>();
		vo.setClientId((String)session.getAttribute("clientId"));
		vos = dao.bidSelectS(vo);
		vob = dao.bidSelectB(vo);
		request.setAttribute("bidlists", vos);
		request.setAttribute("bidlistb", vob);
		String viewName = "client/bidlist";
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
