package co.sam.shoeshi.product.cart.web;

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

import com.fasterxml.jackson.databind.ObjectMapper;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.product.cart.service.CartService;
import co.sam.shoeshi.product.cart.service.CartVO;
import co.sam.shoeshi.product.cart.serviceImpl.CartServiceImpl;

@WebServlet("/cartlist.do")
public class CartList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CartList() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		CartService dao = new CartServiceImpl();
		List<HashMap<String, Object>> carts = new ArrayList<>();
		
		ObjectMapper objectMapper = new ObjectMapper();
		
		CartVO vo = new CartVO();
		System.out.println((String)session.getAttribute("clientId"));
		
		vo.setClientId((String)session.getAttribute("clientId"));
		
		carts = dao.cartList(vo);
		
		String data=objectMapper.writeValueAsString(carts);
		System.out.println(data);
		
		request.setAttribute("carts", carts);

		String viewName = "cart/cartlist";
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
