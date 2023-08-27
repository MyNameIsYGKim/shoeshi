package co.sam.shoeshi.admin.web;

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
import co.sam.shoeshi.deal.service.DealService;
import co.sam.shoeshi.deal.service.DealVO;
import co.sam.shoeshi.deal.serviceImpl.DealServiceImpl;


@WebServlet("/adminhomepage.do")
public class AdminHomepage extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminHomepage() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DealService ddao = new DealServiceImpl();
		List<DealVO> deals = new ArrayList<>();
		ClientService cdao = new ClientServiceImpl();
		List<ClientVO> clients = new ArrayList<>();
		
		deals = ddao.dealSelectList();
		request.setAttribute("deals", deals);
		clients = cdao.clientSelectList();
		request.setAttribute("clients", clients);
		
		String viewName = "admin/home/adminhomepage";
		ViewResolve.forward(request, response, viewName);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
