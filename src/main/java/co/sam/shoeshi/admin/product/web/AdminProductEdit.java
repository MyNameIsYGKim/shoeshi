package co.sam.shoeshi.admin.product.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.common.ViewResolve;
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
		try {
		
		ProductService dao = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		
		vo.setProductId(Integer.valueOf(request.getParameter("productEditId")));
		vo.setProductMaker(request.getParameter("productEditMaker"));
		vo.setProductName(request.getParameter("productEditName"));
		vo.setProductPrice(Integer.valueOf(request.getParameter("productEditPrice")));
		
		String viewName = "admin/product/adminproductselect";
		
		int n = dao.productUpdate(vo);
		
		vo = dao.productSelect(vo);
		request.setAttribute("n", vo);
		ViewResolve.forward(request, response, viewName);
		
		}catch(Exception e) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('잘못된 요청'); location.href='http://localhost/example/adminproductmanage.do'</script>");
			writer.close();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
