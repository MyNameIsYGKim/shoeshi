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
import co.sam.shoeshi.productimg.service.ProductimgService;
import co.sam.shoeshi.productimg.service.ProductimgVO;
import co.sam.shoeshi.productimg.serviceImpl.ProductimgServiceImpl;

@WebServlet("/adminproductdelete.do")
public class AdminProductDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminProductDelete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService pdao = new ProductServiceImpl();
		ProductimgService pidao = new ProductimgServiceImpl();
		ProductVO pvo = new ProductVO();
		ProductimgVO pivo = new ProductimgVO();
		
		pvo.setProductId(Integer.valueOf(request.getParameter("productId")));
		pivo.setProductId(Integer.valueOf(request.getParameter("productId")));
		
		
		int n = pdao.productDelete(pvo);
		int m = pidao.productimgDelete(pivo);
		if(n==1 && m==1) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('삭제 완료!'); location.href='http://localhost/example/adminproductmanage.do'</script>");
			writer.close();
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('삭제 실패!'); location.href='http://localhost/example/adminproductmanage.do'</script>");
			writer.close();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
