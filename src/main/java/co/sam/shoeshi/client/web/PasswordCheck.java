package co.sam.shoeshi.client.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.sam.shoeshi.client.service.ClientService;
import co.sam.shoeshi.client.service.ClientVO;
import co.sam.shoeshi.client.serviceImpl.ClientServiceImpl;

@WebServlet("/passwordcheck.do")
public class PasswordCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PasswordCheck() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ClientVO vo = new ClientVO();
		ClientService dao = new ClientServiceImpl();
		HttpSession session = request.getSession();
		
		String pwd = request.getParameter("clientPassword");
		System.out.println(pwd);
		String data = "no"; // 사용가능ID
		vo.setClientId((String)session.getAttribute("clientId"));
		System.out.println((String)session.getAttribute("clientId"));
		vo = dao.clientSelect(vo);
		if (pwd.equals(vo.getClientPassword())) {
			data = "yes";
		}
		response.getWriter().append(data);
		System.out.println(data);
		return;	

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
