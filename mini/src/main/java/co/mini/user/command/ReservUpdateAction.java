package co.mini.user.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import co.mini.common.Action;
import co.mini.dao.MemberDao;
import co.mini.vo.MemberVO;


public class ReservUpdateAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		

		HttpSession session = request.getSession(false);
		
		String id = (String) session.getAttribute("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");

		MemberVO vo = new MemberVO();
		
		vo.setId(id);
		vo.setPassword(password);
		vo.setName(name);
		vo.setPhone(phone);
		vo.setEmail(email);
		
		MemberDao dao = new MemberDao();
		dao.memberUpdate(vo);
		
		try {
			response.getWriter().print(new JSONObject(vo));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		return null;
	}

}
