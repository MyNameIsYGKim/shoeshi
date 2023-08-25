package co.sam.shoeshi.product.cart.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.product.cart.service.CartService;
import co.sam.shoeshi.product.cart.service.CartVO;
import co.sam.shoeshi.product.cart.serviceImpl.CartServiceImpl;


@WebServlet("/cartadd.do")
public class CartAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public CartAdd() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CartService dao = new CartServiceImpl();
		CartVO vo = new CartVO();
		
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		vo.setClientId(request.getParameter("clientId"));
	
		int num = dao.cartInsert(vo);
		
		if (num == 1) {
			request.setAttribute("message", "Succeed Add to Cart");
		} else {
			request.setAttribute("message", "Fail Add to Cart");
		}
		
		String viewName = "user/cartmessage";
		ViewResolve.forward(request, response, viewName);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
