package co.mini.user.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.json.JSONObject;

import co.mini.common.Action;
import co.mini.dao.MemberDao;
import co.mini.vo.MemberVO;

public class ReservDeleteAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		
		HttpSession session = request.getSession(false);
		
		String id = (String) session.getAttribute("id");

		MemberVO vo = new MemberVO();
		MemberDao dao = new MemberDao();
		
		vo.setId(id);
		dao.memberDelete(vo);
		
		try {
			response.getWriter().print(new JSONObject(vo));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return null;
	}

}
