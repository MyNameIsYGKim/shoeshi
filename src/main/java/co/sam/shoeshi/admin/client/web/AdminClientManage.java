package co.sam.shoeshi.admin.client.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.client.service.ClientService;
import co.sam.shoeshi.client.service.ClientVO;
import co.sam.shoeshi.client.serviceImpl.ClientServiceImpl;
import co.sam.shoeshi.common.ViewResolve;


@WebServlet("/adminclientmanage.do")
public class AdminClientManage extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminClientManage() {
        super();
      
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClientService dao = new ClientServiceImpl();
		List<ClientVO> clients = new ArrayList<>();
		
		clients = dao.clientSelectList();
		request.setAttribute("clients", clients);
		
		String viewName = "admin/client/adminclientmanage";
		ViewResolve.forward(request, response, viewName);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
