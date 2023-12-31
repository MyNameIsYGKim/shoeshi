package co.sam.shoeshi.bid.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;

import co.sam.shoeshi.bid.service.BidService;
import co.sam.shoeshi.bid.service.BidVO;
import co.sam.shoeshi.bid.serviceImpl.BidServiceImpl;

@WebServlet("/ajaxbidsearch.do")
public class AjaxBidSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AjaxBidSearch() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BidService dao = new BidServiceImpl();
		List<BidVO> bids = new ArrayList<>();
		
		String key = request.getParameter("key");
		String val = request.getParameter("val");
		bids = dao.bidSelectList(key, val);
		
		ObjectMapper ObjectMapper = new ObjectMapper(); // json 객체를 만들기 위해 필요한 객체.
		
		ObjectMapper.registerModule(new JavaTimeModule()); // LocalDate 처리
		ObjectMapper.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS); // LocalDate 처리
		
		String data = ObjectMapper.writeValueAsString(bids); // json 형태로 결과를 만들어줌.
		
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().append(data);
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
