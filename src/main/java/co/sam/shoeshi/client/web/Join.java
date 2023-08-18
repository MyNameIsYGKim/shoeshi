package co.sam.shoeshi.client.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.sam.shoeshi.bid.serviceImpl.ClientServiceImpl;

import co.sam.shoeshi.client.service.ClientService;
import co.sam.shoeshi.client.service.ClientVO;
import co.sam.shoeshi.client.serviceImpl.ClientServiceImpl;

@WebServlet("/join.do")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Join() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ClientVO vo = new ClientVO();
		ClientService dao = new ClientServiceImpl();
		String saveDir = getServletContext().getRealPath("attech/member/");
		int sizeLimit = 100 * 1024 * 1024;
		MultipartRequest multi = new MultipartRequest(request, saveDir, sizeLimit, "UTF-8",
				new DefaultFileRenamePolicy());

		vo.setClientId(multi.getParameter("clientId"));
		vo.setClientPassword(multi.getParameter("clientPassword"));
		vo.setClientName(multi.getParameter("clientName"));
		vo.setClientTel(multi.getParameter("clientTel"));
		vo.setClientAddress(multi.getParameter("clientAddress"));

		PrintWriter writer = response.getWriter();
		
		if (dao.clientInsert(vo) != 0) {
			response.setContentType("text/html; charset=UTF-8");
			writer.println("<script>alert('회원가입 완료.'); location.href='http://localhost/example/home.do'</script>");
			writer.close();
		} else {
			response.setContentType("text/html; charset=UTF-8");
			writer.println("<script>alert('회원가입 실패.'); location.href='http://localhost/example/home.do'</script>");
			writer.close();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ClientVO vo = new ClientVO();
		ClientService dao = new ClientServiceImpl();
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
//		String password2 = request.getParameter("password2");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		System.out.println(id + "" + password + "" + name + "" + address + "" + tel);
		vo.setClientId(id);
		vo.setClientPassword(password);
//		vo.setClientPassword(request.getParameter("password2"));
		vo.setClientName(name);
		vo.setClientAddress(address);
		vo.setClientTel(tel);

		dao.clientInsert(vo);
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter writer = response.getWriter();
		writer.println("<script>alert('회원가입 완료.'); location.href='http://localhost/example/home.do'</script>");
		writer.close();
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
