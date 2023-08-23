package co.sam.shoeshi.admin.productimg.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.productimg.service.ProductimgService;
import co.sam.shoeshi.productimg.service.ProductimgVO;
import co.sam.shoeshi.productimg.serviceImpl.ProductimgServiceImpl;

@WebServlet("/adminproductimgdelete.do")
public class AdminProductimgDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminProductimgDelete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductimgService dao = new ProductimgServiceImpl();
		List<ProductimgVO> productimgs = new ArrayList<>();
		
		productimgs = dao.productimgSelectList();
		request.setAttribute("productimgs", productimgs);
		
		String viewName = "admin/productimg/adminproductimglist";
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
