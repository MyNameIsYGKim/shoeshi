package co.sam.shoeshi.admin.client.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.exceptions.PersistenceException;

import co.sam.shoeshi.client.service.ClientService;
import co.sam.shoeshi.client.service.ClientVO;
import co.sam.shoeshi.client.serviceImpl.ClientServiceImpl;

@WebServlet("/adminclientinsert.do")
public class AdminClientInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminClientInsert() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClientService dao = new ClientServiceImpl();
		ClientVO vo = new ClientVO();
		
		try {
			
		vo.setClientId(request.getParameter("clientInsertId"));
		vo.setClientPassword(request.getParameter("clientInsertPassword"));
		vo.setClientName(request.getParameter("clientInsertName"));
		vo.setClientAddress(request.getParameter("clientInsertAddress"));
		vo.setClientTel(request.getParameter("clientInsertTel"));
		
		String authorValue = "";
		if(request.getParameter("key").equals("adminInsertUser")) {
			authorValue = "USER";
		}else if(request.getParameter("key").equals("adminInsertAdmin")) {
			authorValue = "ADMIN";
		}
		vo.setClientAuthor(authorValue);
		
		int n = dao.adminClientInsert(vo);
		if(n == 1) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('등록 완료!'); location.href='http://localhost/example/adminclientmanage.do'</script>");
			writer.close();
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('등록 실패!'); location.href='http://localhost/example/adminclientinsertform.do'</script>");
			writer.close();
		}
		
		}catch(Exception e) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('잘못된 요청'); location.href='http://localhost/example/adminclientmanage.do'</script>");
			writer.close();	
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
