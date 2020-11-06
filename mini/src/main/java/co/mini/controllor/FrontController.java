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

import co.mini.board.command.BoardAction;
import co.mini.board.command.BoardUpdateAction;
import co.mini.board.command.BoardWriteAction;
import co.mini.board.command.BoardWriteFormAction;
import co.mini.board.command.EventListAction;
import co.mini.board.command.LoginAction;
import co.mini.board.command.LoginForm;
import co.mini.board.command.MemberForm;
import co.mini.board.command.MemberInsertAction;
import co.mini.board.command.reserveResultAction;
import co.mini.common.Action;
import co.mini.owner.command.ReservPageAction;
import co.mini.owner.command.ownerLogin;
import co.mini.thema.command.reserveAction;
import co.mini.thema.command.reserveInsertAction;
import co.mini.thema.command.reserveListAction;
import co.mini.user.command.MemUpdate;
import co.mini.user.command.Password;
import co.mini.user.command.ReservAction;
import co.mini.user.command.ReservDeleteAction;
import co.mini.user.command.ReservListAction;
import co.mini.user.command.ReservUpdate;
import co.mini.user.command.ReservUpdateAction;
import co.mini.user.command.logout;

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
	
		map.put("/reservation.do", new ReservListAction()); // 예약 내역 테이블로
		map.put("/reserv.do", new ReservAction()); // 예약 상세정보 뿌려줌
		map.put("/reservUp.do", new ReservUpdate()); // 수정화면 보여줌
		map.put("/reUpdate.do", new ReservUpdateAction());// 수정 할꺼야
		map.put("/reDelete.do", new ReservDeleteAction()); 
		map.put("/memberUp.do", new MemUpdate());
		map.put("/password.do", new Password() );
		
		map.put("/ownerLogin.do", new ownerLogin() ); // 사장님 로그인 
		map.put("/logout.do", new logout() ); // 로그아웃
		map.put("/ownerReservPage.do", new ReservPageAction() );
		
	
		
		// 최재영
		map.put("/reserveInsert.do", new reserveInsertAction()); //테마예약하기 화면
		map.put("/reserve.do", new reserveAction()); //예약하기화면 
		map.put("/reserveResult.do",new reserveResultAction());
		map.put("/reserveList.do",new reserveListAction());
		
		//임성은
		map.put("/loginPage.do", new LoginForm());
		map.put("/login.do", new LoginAction()); // 로그인 하면 넘어가는 페이지
		map.put("/memberForm.do", new MemberForm());
		map.put("/memberInsert.do", new MemberInsertAction());
		map.put("/eventlist.do", new EventListAction());
		
		
		
		
		
		
		
		
		
		
		
		//김시무
		
	      map.put("/board.do", new BoardAction());
	      map.put("/boardWrite.do", new BoardWriteFormAction()); //게시판 글등록 페이지 이동
	      map.put("/boardInsert.do", new BoardWriteAction());  	  //게시판 글등록
	      map.put("/boardUpdate.do", new BoardUpdateAction());	  //게시판 글수정		
	      
		
		
		
		
		
		
		
		
		
		
		
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
		
		if(viewPage != null) {
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage); // 선택한 페이지로 가기
			dispatcher.forward(request, response);
			
		}
		
	}

}
