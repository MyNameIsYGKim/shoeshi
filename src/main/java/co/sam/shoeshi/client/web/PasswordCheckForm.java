package co.sam.shoeshi.client.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.common.ViewResolve;


@WebServlet("/passwordcheckform.do")
public class PasswordCheckForm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public PasswordCheckForm() {
        super();
        
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("editType");
		
		request.setAttribute("type", type);
		String viewName = "my/client/passwordcheckform";
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
