package co.sam.shoeshi.admin.web;

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

@WebServlet("/adminproductselect.do")
public class AdminProductSelect extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminProductSelect() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService dao = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		
		vo.setProductId(request.getParameter("productId"));
		
		vo = dao.productSelect(vo);
		
		request.setAttribute("n", vo);
		String viewName = "admin/admin/adminproductselect";
		
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

