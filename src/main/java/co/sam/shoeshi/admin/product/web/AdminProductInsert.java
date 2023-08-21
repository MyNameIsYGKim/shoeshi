package co.sam.shoeshi.admin.product.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.product.service.ProductService;
import co.sam.shoeshi.product.service.ProductVO;
import co.sam.shoeshi.product.serviceImpl.ProductServiceImpl;

@WebServlet("/adminproductinsert.do")
public class AdminProductInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminProductInsert() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService dao = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		
		
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		vo.setProductMaker(request.getParameter("productMaker"));
		vo.setProductName(request.getParameter("productName"));
		vo.setProductPrice(Integer.valueOf(request.getParameter("productPrice")));
		
		String viewName = "admin/product/adminproductmessage";
		
		int n = dao.productInsert(vo);
		if(n==1) {
			request.setAttribute("message", "등록 완료!");
		}else {
			request.setAttribute("message", "등록 실패!");
		}
		
		vo = dao.productSelect(vo);
		
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
