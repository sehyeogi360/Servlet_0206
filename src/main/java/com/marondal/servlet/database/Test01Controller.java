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

@WebServlet("/db/test01")
public class Test01Controller extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");// 텍스트 플레인
		
		PrintWriter out = response.getWriter();//리스폰스 값 담아야해서 씀 여기까지 기본셋팅
		
		MysqlService mysqlService = MysqlService.getInstance();// 데이터베이스에 접속하는 과정 싱글턴 형태. 뉴가 아닌.getInstance
		// 접속
		mysqlService.connect();
		// 쿼리수행
		
		
//		ResultSet resultSet = mysqlService.select("SELECT `address`, `area`, `type`\r\n"
//				+ "FROM `real_estate`\r\n"
//				+ "ORDER BY `realtorId`  DESC;");
		
//		
//		try {
//			while(resultSet.next()) {
//				
//				String address= resultSet.getString("address");
//				int area = resultSet.getInt("area");
//				String type = resultSet.getString("type");
//				System.out.println("매물 주소 : " + address	 + " 면적 : " + area + " 타입 : " + type);
//			}
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
		//insert 문 
		
//		String insert = "INSERT INTO `real_estate`\r\n"
//				+ "(`realtorId`, `address`, `area`, `type`, `price`, `rentPrice`, `createdAt`,`updatedAt`)\r\n"
//				+ "VALUE\r\n"
//				+ "(3, '헤라펠리스 101동 5305호', 350, '매매', 1500000, NULL, now(), now());";
//		
//		int count = mysqlService.update(insert);//업데이트 메소드로 실행된 행의 갯수
//		
//		out.println("수행결과 : " + count); // 그랬더니 -1 이나옴. exception이 발견했다는 뜻.
//		
//		mysqlService.disconnect();
		
		
		// 데이터베이스 접속
			
		String selectQuery = "SELECT `address`, `area`, `type` FROM `real_estate`\r\n"
				+ "ORDER BY `id` DESC LIMIT 10;";
		ResultSet resultSet = mysqlService.select(selectQuery);//mysqlService.select 로수정
		
		try {
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			
//			String url = "jdbc:mysql://localhost:3306/dulumary_0119";
//			String userId = "root";
//			String password = "root";
//		
		
			// 접속
//			Connection connection = DriverManager.getConnection(url ,userId, password);
//			Statement statement = connection.createStatement();
			//쿼리 수행
			
			while(resultSet.next()) {
				String address= resultSet.getString("address"); // 값 저장 해놓기
				int area = resultSet.getInt("area"); // 값 저장 해놓기
				String type = resultSet.getString("type");
				out.println("매물 주소 : " + address + ", 면적 : " +  area + ", 타입 : " + type);
			}
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		mysqlService.disconnect(); //끊어주기
		
		
	}

}
