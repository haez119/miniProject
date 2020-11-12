package co.mini.thema.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import co.mini.common.Action;
import co.mini.dao.OwnerDAO;
import co.mini.vo.MapVO;

public class GuidanceAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		OwnerDAO dao = new OwnerDAO();
		List<MapVO> list = new ArrayList<>();
		
		
		list = dao.selAddress();
		JSONArray json = new JSONArray(list);

		
		request.setAttribute("json", json);
		
		
		
		return "/jsp/main/Guidance.jsp";
	}

}
