package co.sam.shoeshi.admin.client.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.client.service.ClientService;
import co.sam.shoeshi.client.service.ClientVO;
import co.sam.shoeshi.client.serviceImpl.ClientServiceImpl;
import co.sam.shoeshi.common.ViewResolve;

@WebServlet("/adminclientedit.do")
public class AdminClientEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminClientEdit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClientService dao = new ClientServiceImpl();
		ClientVO vo = new ClientVO();
		
		vo.setClientId(request.getParameter("clientId"));
		vo.setClientPassword(request.getParameter("clientPassword"));
		vo.setClientName(request.getParameter("clientName"));
		vo.setClientAddress(request.getParameter("clientAddress"));
		vo.setClientTel(request.getParameter("clientTel"));
		
		String authorValue = "";
		if(request.getParameter("key").equals("authorUser")) {
			authorValue = "USER";
		}else if(request.getParameter("key").equals("authorAdmin")) {
			authorValue = "ADMIN";
		}else {
			authorValue = "USER";
		}
		vo.setClientAuthor(authorValue);
		
		String viewName = "admin/client/adminclientselect";
		
		int n = dao.clientUpdate(vo);
		
		vo = dao.clientSelect(vo);
		request.setAttribute("n", vo);
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
