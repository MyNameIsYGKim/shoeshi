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

		String id = request.getParameter("clientId");
		String pwd = request.getParameter("clientPassword");
		vo.setClientId(id);
		vo = dao.clientSelect(vo);

		if (vo != null) {
			if (vo.getClientPassword().equals(pwd)) {
				session.setAttribute("clientId", vo.getClientId());
//				session.setAttribute("clientPassword", vo.getClientPassword());
				session.setAttribute("clientName", vo.getClientName());
				session.setAttribute("clientAddress", vo.getClientAddress());
				session.setAttribute("clientTel", vo.getClientTel());
				session.setAttribute("clientAuthor", vo.getClientAuthor());
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter writer = response.getWriter();
				writer.println("<script>alert('로그인 되었습니다.'); location.href='http://localhost/example/home.do'</script>");
				writer.close();	
			} else {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter writer = response.getWriter();
				writer.println("<script>alert('비밀번호가 틀렸습니다.'); location.href='http://localhost/example/loginform.do'</script>");
				writer.close();	
			}
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('존재하지 않는 아이디입니다.'); location.href='http://localhost/example/loginform.do'</script>");
			writer.close();	
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
