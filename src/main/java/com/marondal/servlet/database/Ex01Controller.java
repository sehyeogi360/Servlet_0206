package com.marondal.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;


@WebServlet("/db/ex01")
public class Ex01Controller extends HttpServlet {

	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/html");		
		
		PrintWriter out = response.getWriter();
		
		// used_goods 에 있는 모든 행을 html 로 표현
		
		
//		MysqlService mysqlService = new MysqlService();//객체생성 기본생성자 private로 바뀌어서 에러가 뜨게됨
		MysqlService mysqlService = MysqlService.getInstance();//이렇게 표현 싱글턴패턴을 활용한 클래스
		// 접속		
		mysqlService.connect();
		// 쿼리수행
		ResultSet resultSet = mysqlService.select("SELECT * FROM `used_goods`;");
		
		out.println("<html><head><title>중고 목록</title></head><body>");
		
		// <div> 제목 : 플스 4 가격 : 200000원 </div>
		try {
			while(resultSet.next()) {
				
				String title = resultSet.getString("title");//해당하는 컬럼명
				int price = resultSet.getInt("price");
				
				out.println("<div> 제목 : " + title + "가격 : " + price + "</div>");

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
//insert 잘되었으면 주석 처리 		
//		String insertQuery = "INSERT INTO `used_goods`\r\n"
//				+ "(`sellerId`, `title`, `price`, `description`, `picture`, `createdAt`,`updatedAt`)\r\n"
//				+ "VALUE\r\n"
//				+ "(3, '고양이 간식 팝니다', 2000, '저희 고양이가 안먹어서 팝니다', NULL, now(), now());";
//		
//		int count = mysqlService.update(insertQuery);//실행된 행의 갯수 리턴
//		out.println("<div> 삽입 결과 : " + count + "</div>");
		mysqlService.disconnect();//접속끊기.
		
		out.println("</body></html>");
		
		// 데이터베이스 접속
//		try {
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			
//			// 접속주소, 아이디, 비밀번호
//			String url = "jdbc:mysql://localhost:3306/dulumary_0119";//환경에 맞춰 작성
//			String userId = "root";
//			String password = "root";//회사 현업할때 외부에 내보내야 하므로 커밋 안하는걸 추천함 아이디 비번 노출땜에 
//			
//			// 접속
//			Connection connection = DriverManager.getConnection(url, userId, password);
//			Statement statement =connection.createStatement();//자바.sql 이걸로 임포트
//			
//			// 쿼리 수행
//			String selectQuery = "SELECT * FROM `used_goods`;";			
//			ResultSet resultSet = statement.executeQuery(selectQuery);
//			
//			out.println("<html><head><title>중고 목록</title></head><body>");
//			
//			// <div> 제목 : 플스 4 가격 : 200000원 </div>
//			while(resultSet.next()) {
//				
//				String title = resultSet.getString("title");//해당하는 컬럼명
//				int price = resultSet.getInt("price");
//				
//				out.println("<div> 제목 : " + title + "가격 : " + price + "</div>");
//				
//				
//			}
//			
//			out.println("</body></html>");
//			
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
	}
}
