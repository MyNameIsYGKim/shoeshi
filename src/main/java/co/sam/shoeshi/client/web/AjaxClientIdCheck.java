package co.sam.shoeshi.client.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.bid.serviceImpl.ClientServiceImpl;
import co.sam.shoeshi.client.service.ClientService;
import co.sam.shoeshi.client.service.ClientVO;


@WebServlet("/ajaxClientIdCheck.do")
public class AjaxClientIdCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AjaxClientIdCheck() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ClientService dao = new ClientServiceImpl();
		ClientVO vo = new ClientVO();
		vo.setClientId(request.getParameter("id"));

		vo = dao.clientSelect(vo);
		String txt = "yes"; // 사용가능ID
		if (vo != null) {
			txt = "no"; // 중복 사용불가ID
		}
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().append(txt);
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
