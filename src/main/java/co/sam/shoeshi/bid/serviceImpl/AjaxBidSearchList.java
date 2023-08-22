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

@WebServlet("/ajaxbidsearchlist.do;")
public class AjaxBidSearchList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AjaxBidSearchList() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		BidService dao = new BidServiceImpl();
		List<HashMap<String, Object>> bidList = new ArrayList<>();
		int productId = Integer.valueOf(request.getParameter("productId"));
		if (request.getParameter("val") == null) {
			bidList = dao.bidSearchList(productId);
		} else {
			int val = Integer.valueOf(request.getParameter("val"));
			bidList = dao.bidSearchList(productId, val);
		}

		ObjectMapper ObjectMapper = new ObjectMapper();

		String data = ObjectMapper.writeValueAsString(bidList);

		response.getWriter().append(data);
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
