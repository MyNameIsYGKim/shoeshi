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
		System.out.println((String) session.getAttribute("id") + " " + request.getParameter("clientPassword") + " "
				+ request.getParameter("clientAddress") + " " + request.getParameter("clientTel"));
		String pwd = request.getParameter("clientPassword");
		String add = request.getParameter("clientAddress");
		String tel = request.getParameter("clientTel");
		
		System.out.println(pwd + " " + add + " "+ tel);

		vo.setClientId((String) session.getAttribute("id"));
		vo.setClientPassword(request.getParameter("clientPassword"));
		vo.setClientAddress(request.getParameter("clientAddress"));
		vo.setClientTel(request.getParameter("clientTel"));

		session.setAttribute("password", request.getParameter("clientPassword"));
		session.setAttribute("address", request.getParameter("clientAddress"));
		session.setAttribute("tel", request.getParameter("clientTel"));

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
