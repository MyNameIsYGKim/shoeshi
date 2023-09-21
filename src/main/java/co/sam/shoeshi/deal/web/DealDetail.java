package co.sam.shoeshi.deal.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.databind.ObjectMapper;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.deal.service.DealService;
import co.sam.shoeshi.deal.service.DealVO;
import co.sam.shoeshi.deal.serviceImpl.DealServiceImpl;

@WebServlet("/dealdetail.do")
public class DealDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DealDetail() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		DealService dao = new DealServiceImpl();
		HttpSession session = request.getSession();
		DealVO vo = new DealVO();
		HashMap<String, Object> dealDetail = new HashMap<>();
		
		System.out.println(request.getParameter("dealType")+request.getParameter("dealNo"));
		vo.setDealNo(Integer.valueOf(request.getParameter("dealNo")));
		
		ObjectMapper objectMapper = new ObjectMapper();
		String data;
		if ("판매".equals(request.getParameter("dealType"))) {
			vo.setDealSeller((String) session.getAttribute("clientId"));
			dealDetail = dao.dealJoinDetailS(vo);
			data = objectMapper.writeValueAsString(dealDetail);
			System.out.println(data);
		}else {
			vo.setDealBuyer((String) session.getAttribute("clientId"));
			dealDetail = dao.dealJoinDetailB(vo);
			 data = objectMapper.writeValueAsString(dealDetail);
			System.out.println(data);
		}

		
		data = objectMapper.writeValueAsString(dealDetail);
		System.out.println(data);
		
		String viewName = "my/client/dealdetail";
		
		request.setAttribute("d", dealDetail);
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
