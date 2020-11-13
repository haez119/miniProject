package co.mini.owner.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONObject;

import co.mini.common.Action;
import co.mini.dao.OwnerDAO;
import co.mini.vo.OwnerVO;

public class OwnerUpdateAction implements Action{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession(false);
		String id = (String) session.getAttribute("id");
		
		String password = request.getParameter("password");
		String branch_name = request.getParameter("branch_name");
		String name = request.getParameter("name");
		String tel = request.getParameter("tel");
		String address = request.getParameter("address");
		
		OwnerVO vo = new OwnerVO();
		
		vo.setId(id);
		vo.setBranch_name(branch_name);
		vo.setPassword(password);
		vo.setName(name);
		vo.setTel(tel);
		vo.setAddress(address);
		
		OwnerDAO dao = new OwnerDAO();
		dao.update(vo);
		
		try {
			response.getWriter().print(new JSONObject(vo));
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		return null;
	}

}
