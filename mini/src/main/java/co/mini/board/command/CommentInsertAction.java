package co.mini.board.command;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.mini.common.Action;

public class CommentInsertAction implements Action {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		long day = System.currentTimeMillis();
		System.out.println(day);
		SimpleDateFormat simpl2 = new SimpleDateFormat("yyyy-MM-dd");
		String d = simpl2.format(day);
		
		return "commentInsert.do";
	}

}
