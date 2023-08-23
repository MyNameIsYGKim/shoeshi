package co.sam.shoeshi.admin.deal.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.deal.service.DealService;
import co.sam.shoeshi.deal.service.DealVO;
import co.sam.shoeshi.deal.serviceImpl.DealServiceImpl;

@WebServlet("/admindealdelete.do")
public class AdminDealDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminDealDelete() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DealService dao = new DealServiceImpl();
		DealVO vo = new DealVO();
		
		vo.setDealNo(Integer.valueOf(request.getParameter("dealNo")));
		
		String viewName = "home/message";
		
		int n = dao.dealDelete(vo);
		if(n==1) {
			request.setAttribute("message", "삭제 완료!");
		}else {
			request.setAttribute("message", "삭제 실패!");
		}
		
		vo = dao.dealSelect(vo);
		
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
