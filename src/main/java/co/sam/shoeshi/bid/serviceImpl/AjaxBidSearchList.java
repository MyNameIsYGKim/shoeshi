package co.sam.shoeshi.bid.serviceImpl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import co.sam.shoeshi.bid.service.BidService;

@WebServlet("/ajaxbidsearchlist.do")
public class AjaxBidSearchList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AjaxBidSearchList() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		BidService dao = new BidServiceImpl();
		List<HashMap<String, Object>> bidList = new ArrayList<>();
		HashMap<String, Object> sPrice = new HashMap<String, Object>();
		HashMap<String, Object> bPrice = new HashMap<String, Object>();
		HashMap<String, Object> bidData = new HashMap<String, Object>();
		int pid = Integer.valueOf(request.getParameter("pid"));
		int size = Integer.valueOf(request.getParameter("size"));
		String type = request.getParameter("type");

		bidList = dao.bidSearchList(pid, size, type);
		
		bPrice = dao.searchBuyPrice(pid, size);
		sPrice = dao.searchSellPrice(pid, size);
		
		if(bPrice!=null) {
			bidData.put("b",bPrice);
		}
		if(sPrice!=null) {
			bidData.put("s",sPrice);
		}
		if(bidList!=null) {
			bidData.put("l",bidList);
		}
		
				
		ObjectMapper ObjectMapper = new ObjectMapper();
				
		String data = ObjectMapper.writeValueAsString(bidData);
		
		
		System.out.println(data);
		
		response.getWriter().append(data);
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}