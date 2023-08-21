package co.sam.shoeshi.payment.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.sam.shoeshi.payment.service.PaymentService;
import co.sam.shoeshi.payment.service.PaymentVO;
import co.sam.shoeshi.payment.serviceImple.PaymentServiceImpl;

@WebServlet("/paymentedit.do")
public class PaymentEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PaymentEdit() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PaymentVO vo = new PaymentVO();
		PaymentService dao = new PaymentServiceImpl();
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
	vo.setClientId((String) session.getAttribute("id"));
	vo.setBankAccount(Long.parseLong(request.getParameter("bankAccount")));
	vo.setBankName(request.getParameter("bankName"));
	vo.setCardCo(request.getParameter("cardCo"));
	vo.setCardNum(Long.parseLong(request.getParameter("cardNum")));


		int n = dao.paymentUpdate(vo);
		if (n == 0) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println(
					"<script>alert('정보수정 오류.'); location.href='http://localhost/example/paymenteditform.do'</script>");
			writer.close();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println(
					"<script>alert('정보가 수정되었습니다.'); location.href='http://localhost/example/paymenteditform.do'</script>");
			writer.close();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
