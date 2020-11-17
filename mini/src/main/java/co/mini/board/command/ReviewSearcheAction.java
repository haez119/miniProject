package co.mini.board.command;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import co.mini.common.Action;
import co.mini.dao.BoardDAO;

public class ReviewSearcheAction implements Action {

   @Override
   public String exec(HttpServletRequest request, HttpServletResponse response) {
      
      
      BoardDAO dao = new BoardDAO();
      ArrayList<HashMap<String, Object>> list = new ArrayList<HashMap<String, Object>>();
      
      String bname = request.getParameter("bname");
      
      list = dao.selectName(bname);
      // System.out.println("??"+bname);
      
      try {
         // list는 배열이니까 array / vo는 객체니까 object
         response.getWriter().print(new JSONArray(list));
      } catch (IOException e) {
         e.printStackTrace();
      }
      
      
      
      return null;
   }

}