package co.sam.shoeshi.admin.product.web;

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
import co.sam.shoeshi.productimg.service.ProductimgService;
import co.sam.shoeshi.productimg.service.ProductimgVO;
import co.sam.shoeshi.productimg.serviceImpl.ProductimgServiceImpl;

@WebServlet("/adminproducteditform.do")
public class AdminProductEditForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminProductEditForm() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService pdao = new ProductServiceImpl();
		ProductimgService pidao = new ProductimgServiceImpl();
		ProductVO pvo = new ProductVO();
		ProductimgVO pivo = new ProductimgVO();
		
		pvo.setProductId(Integer.valueOf(request.getParameter("productId")));
		pivo.setProductId(Integer.valueOf(request.getParameter("productId")));
		pvo = pdao.productSelect(pvo);
		pivo = pidao.productimgSelect(pivo);
		request.setAttribute("n", pvo);
		request.setAttribute("m", pivo);
		String viewName = "admin/product/adminproductmodify";
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
