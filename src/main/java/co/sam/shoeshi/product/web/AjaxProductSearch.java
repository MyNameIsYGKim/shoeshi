package co.sam.shoeshi.product.web;

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

import co.sam.shoeshi.product.service.ProductService;
import co.sam.shoeshi.product.service.ProductVO;
import co.sam.shoeshi.product.serviceImpl.ProductServiceImpl;

@WebServlet("/ajaxproductsearch.do")
public class AjaxProductSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AjaxProductSearch() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService dao = new ProductServiceImpl();
		List<ProductVO> products = new ArrayList<>();
		
		String key = request.getParameter("key");
		String val = request.getParameter("val");
		products = dao.productSelectList(key, val);
		
		ObjectMapper ObjectMapper = new ObjectMapper(); // json 객체를 만들기 위해 필요한 객체.
		
		ObjectMapper.registerModule(new JavaTimeModule()); // LocalDate 처리
		ObjectMapper.disable(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS); // LocalDate 처리
		
		String data = ObjectMapper.writeValueAsString(products); // json 형태로 결과를 만들어줌.
		
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().append(data);
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
