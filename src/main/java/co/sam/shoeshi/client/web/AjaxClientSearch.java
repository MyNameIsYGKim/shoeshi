package co.sam.shoeshi.client.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

import co.sam.shoeshi.client.service.ClientService;
import co.sam.shoeshi.client.service.ClientVO;
import co.sam.shoeshi.client.serviceImpl.ClientServiceImpl;

@WebServlet("/ajaxclientsearch.do")
public class AjaxClientSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AjaxClientSearch() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClientService dao = new ClientServiceImpl();
		List<ClientVO> clients = new ArrayList<>();
		
		String key = request.getParameter("key");
		String val2 = request.getParameter("val2");
		
		clients = dao.clientSelectList(key, val2);
		
		ObjectMapper ObjectMapper = new ObjectMapper();
		
		String data = ObjectMapper.writeValueAsString(clients);
		
		response.setContentType("text/html; charset=UTF-8");
		response.getWriter().append(data);
		return;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
