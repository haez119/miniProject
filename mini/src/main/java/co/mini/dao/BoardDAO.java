package co.mini.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import co.mini.vo.BoardVO;

public class BoardDAO extends DAO {

	private PreparedStatement psmt; // sql 명령문 실행
	private ResultSet rs; // select 후에 결과셋 받기
	private BoardVO vo;

	private final String SELECT_ALL = "SELECT * FROM BOARD1";
	private final String SELECT =
	private final String INSERT =
	private final String UPDATE =
	private final String DELETE =
}
