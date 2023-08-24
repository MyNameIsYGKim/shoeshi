package co.sam.shoeshi.admin.deal.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.deal.service.DealService;
import co.sam.shoeshi.deal.service.DealVO;
import co.sam.shoeshi.deal.serviceImpl.DealServiceImpl;

<<<<<<<< HEAD:src/main/java/co/sam/shoeshi/admin/web/AdminProductModify.java
@WebServlet("/adminproductmodify.do")
public class AdminProductModify extends HttpServlet {
========

@WebServlet("/admindealmanage.do")
public class AdminDealManage extends HttpServlet {
>>>>>>>> 김연규:src/main/java/co/sam/shoeshi/admin/deal/web/AdminDealManage.java
	private static final long serialVersionUID = 1L;

<<<<<<<< HEAD:src/main/java/co/sam/shoeshi/admin/web/AdminProductModify.java
    public AdminProductModify() {
========
    public AdminDealManage() {
>>>>>>>> 김연규:src/main/java/co/sam/shoeshi/admin/deal/web/AdminDealManage.java
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DealService dao = new DealServiceImpl();
		List<DealVO> deals = new ArrayList<>();
		
		deals = dao.dealSelectList();
		request.setAttribute("deals", deals);
		
		String viewName = "admin/deal/admindealmanage";
		ViewResolve.forward(request, response, viewName);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}