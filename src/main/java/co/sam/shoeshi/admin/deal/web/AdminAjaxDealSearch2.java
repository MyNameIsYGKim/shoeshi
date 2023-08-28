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

@WebServlet("/adminajaxdealsearch2.do")
public class AdminAjaxDealSearch2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminAjaxDealSearch2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DealService dao = new DealServiceImpl();
		List<DealVO> deals = new ArrayList<>();
		
		String key2 = request.getParameter("key2");
		String AdminDealSearchValue2 = request.getParameter("AdminDealSearchValue2");
		deals = dao.dealSelectList2(key2, AdminDealSearchValue2);
		
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
