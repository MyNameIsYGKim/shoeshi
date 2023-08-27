package co.sam.shoeshi.admin.deal.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.common.ViewResolve;
import co.sam.shoeshi.deal.service.DealService;
import co.sam.shoeshi.deal.service.DealVO;
import co.sam.shoeshi.deal.serviceImpl.DealServiceImpl;

@WebServlet("/admindealedit.do")
public class AdminDealEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminDealEdit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		
		DealService dao = new DealServiceImpl();
		DealVO vo = new DealVO();
		
		vo.setDealNo(Integer.valueOf(request.getParameter("dealNo")));
		vo.setDealDate(LocalDate.parse(request.getParameter("dealDate")));
		vo.setProductId(Integer.valueOf(request.getParameter("productId")));
		vo.setProductSize(Integer.valueOf(request.getParameter("productSize")));
		vo.setDealBuyer(request.getParameter("dealBuyer"));
		vo.setDealSeller(request.getParameter("dealSeller"));
		vo.setDealPrice(Integer.valueOf(request.getParameter("dealPrice")));
		
		String stateValue = "";
		if(request.getParameter("key").equals("dealEditPass")) {
			stateValue = "완료";
			vo.setDealComent("");
		}else if(request.getParameter("key").equals("dealEditCancel")) {
			stateValue = "실패";
			vo.setDealComent(request.getParameter("dealComent"));
		}else {
			vo.setDealComent("");
		}
		vo.setDealState(stateValue);
		
		
		String viewName = "admin/deal/admindealselect";
		
		int n = dao.dealUpdate(vo);
		
		vo = dao.dealSelect(vo);
		request.setAttribute("n", vo);
		ViewResolve.forward(request, response, viewName);
		
		}catch(Exception e) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('잘못된 요청'); location.href='http://localhost/example/admindealmanage.do'</script>");
			writer.close();	
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
