package co.sam.shoeshi.admin.productimg.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.productimg.service.ProductimgService;
import co.sam.shoeshi.productimg.service.ProductimgVO;
import co.sam.shoeshi.productimg.serviceImpl.ProductimgServiceImpl;

@WebServlet("/adminproductimginsert.do")
public class AdminProductimgInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminProductimgInsert() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductimgService dao = new ProductimgServiceImpl();
		ProductimgVO vo = new ProductimgVO();
		
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		vo.setProductimgPath(request.getParameter("productimgPath"));
		vo.setProductimgName1(request.getParameter("productimgName1"));
		vo.setProductimgName2(request.getParameter("productimgName2"));
		vo.setProductimgName3(request.getParameter("productimgName3"));
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
