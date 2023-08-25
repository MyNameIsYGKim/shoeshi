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

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.product.cart.service.CartService;
import co.sam.shoeshi.product.cart.serviceImpl.CartServiceImpl;

@WebServlet("/cart.do")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CartController() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CartService dao = new CartServiceImpl();
		List<HashMap<String, Object>> carts = new ArrayList<HashMap<String, Object>>();

//		carts = dao.cartList();
		request.setAttribute("carts", carts);

		String viewName = "admin/product/cartcontroller";
		ViewResolve.forward(request, response, viewName);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
