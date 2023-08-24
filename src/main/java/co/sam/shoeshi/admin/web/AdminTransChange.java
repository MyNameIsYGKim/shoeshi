package co.sam.shoeshi.admin.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.sam.shoeshi.common.ViewResolve;


@WebServlet("/admintranschange.do")
public class AdminTransChange extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AdminTransChange() {
        super();
      
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String viewName = "admin/home/admintranschange";
		ViewResolve.forward(request, response, viewName);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
