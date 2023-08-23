package co.sam.shoeshi.bid.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.product.service.ProductService;
import co.sam.shoeshi.product.service.ProductVO;
import co.sam.shoeshi.product.serviceImpl.ProductServiceImpl;

/**
 * Servlet implementation class BidForm
 */
@WebServlet("/bidform.do")
public class BidForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public BidForm() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService dao = new ProductServiceImpl();
		HashMap<String, Object> product = new HashMap<String, Object>();
		ProductVO vo = new ProductVO();
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		product = dao.productJoinSelect(vo);
		request.setAttribute("p", product);
		
		String viewName="bid/bidform";
		ViewResolve.forward(request, response, viewName);
		
				
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
