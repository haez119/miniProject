package co.mini.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// 최상위 DAO. 상속해서 만들거야
public class DAO {
	
	private String driver = "oracle.jdbc.driver.OracleDriver";
	private String url = "jdbc:oracle:thin:@192.168.0.116:1521:xe";
	private String user = "black";
	private String pw = "1234";
	
	public Connection conn; //DB 연결 객체	
	
	public DAO() {
		// 생성자에 드라이브 연결함 => 생성만 하면 자동으로 연결됨
		try {
			Class.forName(driver);
			conn = DriverManager.getConnection(url, user, pw);
			System.out.println("DB 연결 성공");
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
	}

}
