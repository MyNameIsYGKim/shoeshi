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

@WebServlet("/adminclientdelete.do")
public class AdminClientDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminClientDelete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClientService dao = new ClientServiceImpl();
		ClientVO vo = new ClientVO();
		
		vo.setClientId(request.getParameter("clientId"));
		
		String viewName = "home/message";
		
		int n = dao.clientDelete(vo);
		if(n==1) {
			request.setAttribute("message", "삭제 완료!");
		}else {
			request.setAttribute("message", "삭제 실패!");
		}
		
		vo = dao.clientSelect(vo);
		
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
