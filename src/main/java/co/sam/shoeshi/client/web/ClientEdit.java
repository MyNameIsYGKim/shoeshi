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

@WebServlet("/clientedit.do")
public class ClientEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ClientEdit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClientService dao = new ClientServiceImpl();
		ClientVO vo = new ClientVO();
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");
		
		vo.setClientId((String) session.getAttribute("clientId"));
		vo.setClientPassword(request.getParameter("clientPassword"));
		vo.setClientAddress(request.getParameter("clientAddress"));
		vo.setClientTel(request.getParameter("clientTel"));
		session.setAttribute("clientPassword", vo.getClientPassword());
		session.setAttribute("clientAddress", vo.getClientAddress());
		session.setAttribute("clientTel", vo.getClientTel());

		int n = dao.clientUpdate(vo);
		if (n == 0) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println(
					"<script>alert('정보수정 오류.'); location.href='http://localhost/example/clienteditform.do'</script>");
			writer.close();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println(
					"<script>alert('정보가 수정되었습니다.'); location.href='http://localhost/example/clienteditform.do'</script>");
			writer.close();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
