package co.mini.main.command;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;

import co.mini.common.Action;
import co.mini.dao.OwnerDAO;
import co.mini.vo.MapVO;

public class MapView implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
		OwnerDAO dao = new OwnerDAO();
		List<MapVO> list = new ArrayList<>();
		
		
		list = dao.selAddress();
		JSONArray arr = new JSONArray(list);

		// request.setAttribute("list", list);
		request.setAttribute("json", arr);
		
		return "jsp/layout/map.jsp";
	}

}
