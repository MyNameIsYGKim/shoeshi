package co.sam.shoeshi.admin.deal.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		
		int n = dao.dealDelete(vo);
		if(n == 1) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('삭제 완료!'); location.href='http://localhost/example/admindealmanage.do'</script>");
			writer.close();
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('삭제 실패!'); location.href='http://localhost/example/admindealmanage.do'</script>");
			writer.close();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
