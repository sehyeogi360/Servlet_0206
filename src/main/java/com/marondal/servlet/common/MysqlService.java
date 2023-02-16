package com.marondal.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class MysqlService {
	
	private static MysqlService mysqlService = null; //위에 static 추가

	// 접속 주소, 아이디, 비밀번호
	private String url = "jdbc:mysql://localhost:3306/dulumary_0119";//환경에 맞춰 작성
	private String userId = "root";
	private String password = "root";
	
	private Connection connection;// 멤버변수 만들어줘야 함 없다고 뜸
	private Statement statement; //멤버변수 만들기
	
	// 객체를 관리하는 메소드
	public static MysqlService getInstance() {//객체생성없이 호출 하는 메소드 그게 static
		
		if(mysqlService == null) { //딱 한번 생성해라 언제? 널인상태일때 한번도 생성 안됐을때 당연히 에러뜸 
			mysqlService = new MysqlService();
		}
		return mysqlService;
	}
	
	private MysqlService() {//기본생성자 private 클래스 외부에선 호출불가
		
	}
	
	
	// 접속 기능
	public void connect() {
		try {
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			Connection connection = DriverManager.getConnection(url, userId, password);
			statement = connection.createStatement();//java.sql 임포트 앞에 클래스명도 빼주기
			//메소드 호출하면 이복잡한 과정이 한번에 해결
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	// select 쿼리 수행기능 
	public ResultSet select(String query) {//result set 이라는 객체 리턴
		try {
			ResultSet resultSet = statement.executeQuery(query);
			return resultSet;
		} catch (SQLException e) {
			
			e.printStackTrace();
			
			return null;
		}
		
	}
	
	// insert, update, delete 쿼리 수행기능
	public int update(String query) {
		//실행된 행의 개수
		try {
			int count = statement.executeUpdate(query);
		} catch (SQLException e) {//예외 처리
			
			e.printStackTrace();
			
		
		}
		return -1;// 음수의 결과 리턴해주면 잘못된걸 확인
	}
	
	
	
	
	// 접속 끊기
	public void disconnect() {
		
		try {
			statement.close();//한번 끊어주고
			connection.close();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
	}
	
	
	
	
	
}
