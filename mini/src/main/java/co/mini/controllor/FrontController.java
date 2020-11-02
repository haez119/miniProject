package co.mini.controllor;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.board.command.LoginAction;
import co.mini.board.command.LoginForm;
import co.mini.board.command.MemberInsertAction;
import co.mini.common.Action;
import co.mini.user.command.ReservAction;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public FrontController() {
        super();
       
    }
    
    private HashMap<String, Action> map = new HashMap<>(); 

    
    // *.do 적는 곳
	public void init(ServletConfig config) throws ServletException {
		
		//민해주
		map.put("/reserv.do", new ReservAction()); // 예약정보 뿌려줌
	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		// 최재영
		
		
		
		
		
		
		
		
		
		
		
		
		//임성은
		map.put("/loginPage.do", new LoginForm());
		map.put("/login.do", new LoginAction()); // 로그인 하면 넘어가는 페이지
		
		
		
		
		
		
		
		
		
		
		
		
		//김시무
		
		
		
		
		
		
		
		
		
		
		
		
		
//		map.put("/login.do", new LoginAction()); 
//		map.put("/loginForm.do", new LoginForm());
		
	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 실제 수행할 명령
		
		// *.do 실행해서 request, response 전달하는 명령문
		request.setCharacterEncoding("utf-8"); 
		String uri = request.getRequestURI(); 
		String contextPath = request.getContextPath(); 
		
		
		String path = uri.substring(contextPath.length()); 
		Action command = map.get(path);
		String viewPage = command.exec(request, response);
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage); // 선택한 페이지로 가기
		dispatcher.forward(request, response);
		//
		
		
	}

}
