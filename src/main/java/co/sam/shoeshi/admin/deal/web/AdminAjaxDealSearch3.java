package co.sam.shoeshi.admin.deal.web;

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

import co.sam.shoeshi.deal.service.DealService;
import co.sam.shoeshi.deal.service.DealVO;
import co.sam.shoeshi.deal.serviceImpl.DealServiceImpl;

@WebServlet("/adminajaxdealsearch3.do")
public class AdminAjaxDealSearch3 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminAjaxDealSearch3() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DealService dao = new DealServiceImpl();
		List<DealVO> deals = new ArrayList<>();
		
		String key3 = request.getParameter("key3");
		String AdminDealSearchValue3 = request.getParameter("AdminDealSearchValue3");
		deals = dao.dealSelectList3(key3, AdminDealSearchValue3);
		
		ObjectMapper ObjectMapper = new ObjectMapper();
		ObjectMapper.registerModule(new JavaTimeModule());//localdate처리
		ObjectMapper.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);//localdate처리
		String data = ObjectMapper.writeValueAsString(deals);
		
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().append(data);
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
