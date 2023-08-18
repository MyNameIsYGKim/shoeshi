package co.sam.shoeshi.product.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.product.service.ProductService;
import co.sam.shoeshi.product.service.ProductVO;
import co.sam.shoeshi.product.serviceImpl.ProductServiceImpl;

@WebServlet("/productselect.do")
public class ProductSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ProductSelect() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ProductService dao = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		vo.setProductId(request.getParameter("productId"));
System.out.println(request.getParameter("productId"));
		vo = dao.productSelect(vo);

		request.setAttribute("n", vo);
		String viewName = "product/productselect";

		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
