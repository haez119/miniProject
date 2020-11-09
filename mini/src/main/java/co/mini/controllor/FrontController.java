package co.mini.controllor;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.board.command.BoardAction;
import co.mini.board.command.BoardReviewAction;
import co.mini.board.command.BoardUpdateAction;
import co.mini.board.command.BoardWriteAction;
import co.mini.board.command.BoardWriteFormAction;
import co.mini.board.command.EventInsertAction;
import co.mini.board.command.EventInsertForm;
import co.mini.board.command.EventListAction;
import co.mini.board.command.LoginAction;
import co.mini.board.command.LoginForm;
import co.mini.board.command.MemberForm;
import co.mini.board.command.MemberInsertAction;
import co.mini.board.command.ReviewBoardAction;
import co.mini.board.command.reserveResultAction;
import co.mini.common.Action;
import co.mini.owner.command.NoticeInsertAction;
import co.mini.owner.command.NoticeViewAction;
import co.mini.owner.command.OwnerInsertAction;
import co.mini.owner.command.ReservPageAction;
import co.mini.owner.command.ownerLogin;
import co.mini.owner.command.ownerThemaListAction;
import co.mini.owner.command.ownerthemaUpdateAction;
import co.mini.owner.command.reviewInsertAction;
import co.mini.owner.command.themaDelete;
import co.mini.owner.command.themaInsertAction;
import co.mini.owner.command.themaInsertForm;
import co.mini.owner.command.themaUpdateAction;
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
@MultipartConfig(maxFileSize=1024*1024*2  	//size of any uploaded file
,maxRequestSize = 1024*1024*10  //overall size of all uploaded files
,location="d:/img"
,fileSizeThreshold = 1024
)
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
		map.put("/ownerReservPage.do", new ReservPageAction() ); // 사장 예약 정보
		map.put("/ownerinsert.do", new OwnerInsertAction() ); // 사장 회원가입
		map.put("/reviewInsert.do", new reviewInsertAction() ); // 사장 회원가입
		map.put("/reviewboard.do", new ReviewBoardAction()); // 리뷰 등록
		

		map.put("/noticeView.do", new NoticeViewAction()); // 공지사항 뿌리기
		map.put("/noticeInsert.do", new NoticeInsertAction()); // 공지사항 등록
		
	
		
		// 최재영
		map.put("/reserveInsert.do", new reserveInsertAction()); //테마예약하기 화면
		map.put("/reserve.do", new reserveAction()); //예약하기화면 
		map.put("/reserveResult.do",new reserveResultAction());//예약결과화면
		map.put("/reserveList.do",new reserveListAction());
		map.put("/themaInsert.do",new themaInsertAction());
		map.put("/themaInsertForm.do",new themaInsertForm());
		map.put("/ownerThemaList.do",new ownerThemaListAction());
		map.put("/ownerthemaUpdate.do",new ownerthemaUpdateAction());
		map.put("/themaDelete.do",new themaDelete());
		map.put("/themaUpdate.do",new themaUpdateAction());
		
		
		
		
		
		
		//임성은
		map.put("/loginPage.do", new LoginForm());
		map.put("/login.do", new LoginAction()); // 로그인 하면 넘어가는 페이지
		map.put("/memberForm.do", new MemberForm());
		map.put("/memberInsert.do", new MemberInsertAction());
		map.put("/eventlist.do", new EventListAction());
		map.put("/EventInsert.do", new EventInsertAction());
		map.put("/eventInsertForm.do", new EventInsertForm());
		
		
		
		
		
		
		
		
		
		//김시무
	    map.put("/board.do", new BoardAction());   				//게시판 메인 페이지 이동
	    map.put("/boardWrite.do", new BoardWriteFormAction());  //게시판 글등록 페이지 이동
	    map.put("/boardInsert.do", new BoardWriteAction());  	//게시판 글등록
	    map.put("/boardUpdate.do", new BoardUpdateAction());	//게시판 글수정		
	    map.put("/boardReview.do", new BoardReviewAction());	//리뷰게시판 페이지 이동
			
		
		
		
		
		
		
		
		
		
		
		
//		map.put("/login.do", new LoginAction()); 
//		map.put("/loginForm.do", new LoginForm());
		
	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 실제 수행할 명령
		
	request.setCharacterEncoding("utf-8"); 
		
		String uri = request.getRequestURI(); // /BBS/main.do
		String contextPath = request.getContextPath(); // /BBS
		
		// 실제 들어오는 요청 페이지를 찾음?
		String path = uri.substring(contextPath.length()); 
		//  /BBS/main.do 여기서 /BBS 만큼 빼면 main.do가 저장됨 => 실제 페이지
		
		
		Action command = map.get(path); // MainAction() 이 실행됨
		String viewPage = command.exec(request, response);  // 명령이 수행되고 나서 보여줄 페이지를 선택
		// Action이 갖고 있는 메소드? exec의 매개값 => request, response 에 현재 request, response를 넘겨줌
		if(viewPage != null) {
			if(viewPage.startsWith("redirect")) {
				response.sendRedirect(viewPage.substring(9));
			}else {
				// viewPage가 가지고 있는 객체를 유지하면서 전달(forward)
				RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage); // 선택한 페이지로 가기
				dispatcher.forward(request, response); // 전달
			}
	
		}

		
		
	}

}
