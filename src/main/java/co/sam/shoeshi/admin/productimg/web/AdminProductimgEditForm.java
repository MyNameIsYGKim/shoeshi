package co.sam.shoeshi.admin.productimg.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.productimg.service.ProductimgService;
import co.sam.shoeshi.productimg.service.ProductimgVO;
import co.sam.shoeshi.productimg.serviceImpl.ProductimgServiceImpl;

@WebServlet("/AdminProductimgEditForm")
public class AdminProductimgEditForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminProductimgEditForm() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductimgService dao = new ProductimgServiceImpl();
		ProductimgVO vo = new ProductimgVO();
		
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		vo = dao.productimgSelect(vo);
		request.setAttribute("n", vo);
		String viewName = "admin/productimg/adminproductimgeditform";
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
