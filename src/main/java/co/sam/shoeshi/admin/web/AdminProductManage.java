package co.sam.shoeshi.admin.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.product.service.ProductService;
import co.sam.shoeshi.product.service.ProductVO;
import co.sam.shoeshi.product.serviceImpl.ProductServiceImpl;

@WebServlet("/adminproductmanage.do")
public class AdminProductManage extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminProductManage() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService dao = new ProductServiceImpl();
		List<ProductVO> products = new ArrayList<>();
		
		products = dao.productSelectList();
		request.setAttribute("products", products);
		
		String viewName = "admin/product/adminproductmanage2";
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
