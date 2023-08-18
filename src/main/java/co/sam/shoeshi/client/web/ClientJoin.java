package co.sam.shoeshi.client.web;

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

@WebServlet("/clientjoin.do")
public class ClientJoin extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ClientJoin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClientService dao = new ClientServiceImpl();
		ClientVO vo = new ClientVO();
		
		vo.setClientId(getInitParameter("clientId"));
		vo.setClientPassword(getInitParameter("clientPassword"));
		vo.setClientName(getInitParameter("clientName"));
		vo.setClientAddress(getInitParameter("clientAddress"));
		vo.setClientTel(getInitParameter("clientTel"));
		
		String viewName = "client/clientlist";
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
