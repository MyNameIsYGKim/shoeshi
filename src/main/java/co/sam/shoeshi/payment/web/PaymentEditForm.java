package co.sam.shoeshi.payment.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.payment.service.PaymentService;
import co.sam.shoeshi.payment.service.PaymentVO;
import co.sam.shoeshi.payment.serviceImple.PaymentServiceImpl;

@WebServlet("/paymenteditform.do")
public class PaymentEditForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public PaymentEditForm() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		PaymentVO vo = new PaymentVO();
		PaymentService dao = new PaymentServiceImpl();
		vo.setClientId((String)session.getAttribute("id"));
		vo = dao.paymentSelect(vo);
		request.setAttribute("pay", vo);
		String viewName = "client/paymenteditform";
		ViewResolve.forward(request, response, viewName);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
