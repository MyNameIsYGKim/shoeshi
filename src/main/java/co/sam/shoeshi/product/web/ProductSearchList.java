package co.sam.shoeshi.product.web;

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
import co.sam.shoeshi.product.service.ProductService;
import co.sam.shoeshi.product.serviceImpl.ProductServiceImpl;

@WebServlet("/productsearchlist.do")
public class ProductSearchList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProductSearchList() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProductService dao = new ProductServiceImpl();
		List<HashMap<String, Object>> products = new ArrayList<>();

		String val = request.getParameter("val");
		products = dao.productJoinSearchList(val);
		request.setAttribute("products", products);

		String viewName = "product/productlist";
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
