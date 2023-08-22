package co.sam.shoeshi.product.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.product.service.ProductService;
import co.sam.shoeshi.product.serviceImpl.ProductServiceImpl;

@WebServlet("/testlist.do")
public class testlist extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public testlist() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService dao = new ProductServiceImpl();
		List<HashMap<String, Object>> tests = new ArrayList<>();
		
		tests = dao.productJoinSelect();
		request.setAttribute("tests", tests);
		
		String viewName = "product/testlist";
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
