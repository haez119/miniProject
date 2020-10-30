package co.mini.site;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet({"/MenuServ", "/jsp/board/MenuServ" , "/jsp/main/MenuServ" ,"/jsp/user/MenuServ", "/jsp/thema/MenuServ"})
public class MenuServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/jsp/main/home.jsp").forward(request, response);
	}

	
	

}
