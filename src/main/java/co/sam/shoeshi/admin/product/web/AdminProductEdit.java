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

@WebServlet("/adminproductedit.do")
public class AdminProductEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminProductEdit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService dao = new ProductServiceImpl();
		ProductVO vo = new ProductVO();
		
		String saveDir = getServletContext().getRealPath("attech/product/");
		int sizeLimit = 1024 * 1024;
		
		MultipartRequest multi = new MultipartRequest(request, saveDir, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
		
		vo.setProductId(Integer.valueOf(multi.getParameter("productId")));
		vo.setProductMaker(multi.getParameter("productMaker"));
		vo.setProductName(multi.getParameter("productName"));
		vo.setProductPrice(Integer.valueOf(multi.getParameter("productPrice")));
		
		String viewName = "admin/product/adminproductselect";
		
		int n = dao.productUpdate(vo);
		
		vo = dao.productSelect(vo);
		request.setAttribute("n", vo);
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
