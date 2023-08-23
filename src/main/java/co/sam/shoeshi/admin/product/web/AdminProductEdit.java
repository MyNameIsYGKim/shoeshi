package co.sam.shoeshi.admin.product.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.product.service.ProductService;
import co.sam.shoeshi.product.service.ProductVO;
import co.sam.shoeshi.product.serviceImpl.ProductServiceImpl;

@WebServlet("/adminproductedit.do")
public class AdminProductEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminProductEdit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService dao = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		vo.setProductMaker(request.getParameter("productMaker"));
		vo.setProductName(request.getParameter("productName"));
		vo.setProductPrice(Integer.valueOf(request.getParameter("productPrice")));
		
		int n = dao.productUpdate(vo);
		if (n == 0) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println(
					"<script>alert('수정 실패.'); location.href='http://localhost/example/adminproductmanage.do'</script>");
			writer.close();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println(
					"<script>alert('수정 완료.'); location.href='http://localhost/example/adminproductmanage.do'</script>");
			writer.close();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
