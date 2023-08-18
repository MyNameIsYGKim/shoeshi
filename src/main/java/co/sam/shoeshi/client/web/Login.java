package co.sam.shoeshi.client.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.sam.shoeshi.client.service.ClientService;
import co.sam.shoeshi.client.service.ClientVO;
import co.sam.shoeshi.client.serviceImpl.ClientServiceImpl;
import co.sam.shoeshi.common.ViewResolve;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login.do")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Login() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ClientVO vo = new ClientVO();
		ClientService dao = new ClientServiceImpl();
		HttpSession session = request.getSession();
		String message = null;

		String id = request.getParameter("clientId");
		String pwd = request.getParameter("clientPassword");
		vo.setClientId(id);
		vo.setClientPassword(pwd);

		vo = dao.clientSelect(vo);

		if (vo != null) {
			if (vo.getClientPassword().equals(pwd)) {
				session.setAttribute("id", vo.getClientId());
				session.setAttribute("password", vo.getClientPassword());
				session.setAttribute("name", vo.getClientName());
				session.setAttribute("address", vo.getClientAddress());
				session.setAttribute("tel", vo.getClientTel());
				session.setAttribute("author", vo.getClientAuthor());
				request.setAttribute("message", vo.getClientName() + "님 로그인 중");
			} else {
				request.setAttribute("message", "비밀번호가 틀립니다.");
			}
		} else {
			request.setAttribute("message", "존재하지 않는 아이디.");
		}

		String viewName = "clinet/clientmessage";
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
