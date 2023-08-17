package co.sam.shoeshi.client.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.bid.serviceImpl.ClientServiceImpl;
import co.sam.shoeshi.client.service.ClientService;
import co.sam.shoeshi.client.service.ClientVO;

/**
 * Servlet implementation class Join
 */
@WebServlet("/join.do")
public class Join extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Join() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClientVO vo = new ClientVO();
		ClientService dao = new ClientServiceImpl();
		String id = request.getParameter("id");
		String password = request.getParameter("password");
//		String password2 = request.getParameter("password2");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		System.out.println(id + "" + password + "" + name + "" + address + "" + tel+""+getInitParameterNames());
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
