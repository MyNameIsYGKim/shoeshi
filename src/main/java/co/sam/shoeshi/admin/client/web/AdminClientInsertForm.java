package co.sam.shoeshi.admin.client.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.common.ViewResolve;

@WebServlet("/adminclientinsertform.do")
public class AdminClientInsertForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminClientInsertForm() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String viewName = "admin/client/adminclientinsertform";
		ViewResolve.forward(request, response, viewName);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
