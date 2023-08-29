package co.sam.shoeshi.admin.bid.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.sam.shoeshi.bid.service.BidService;
import co.sam.shoeshi.bid.service.BidVO;
import co.sam.shoeshi.bid.serviceImpl.BidServiceImpl;
import co.sam.shoeshi.common.ViewResolve;

@WebServlet("/adminbidedit.do")
public class AdminBidEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminBidEdit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BidService dao = new BidServiceImpl();
		BidVO vo = new BidVO();
		
		String saveDir = getServletContext().getRealPath("attech/bid/");
		int sizeLimit = 1024 * 1024;
		
		MultipartRequest multi = new MultipartRequest(request, saveDir, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
		
		vo.setBidNo(Integer.valueOf(multi.getParameter("bidNo")));
		vo.setProductId(Integer.valueOf(multi.getParameter("productId")));
		vo.setBidPrice(Integer.valueOf(multi.getParameter("bidPrice")));
		vo.setBidType(multi.getParameter("bidType"));
		vo.setClientId(multi.getParameter("clientId"));
		vo.setProductSize(Integer.valueOf(multi.getParameter("productSize")));
		
		String viewName = "admin/bid/adminbidselect";
		
		int n = dao.bidUpdate(vo);
		
		vo = dao.bidSelect(vo);
		request.setAttribute("n", vo);
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
