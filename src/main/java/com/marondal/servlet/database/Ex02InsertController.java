package com.marondal.servlet.database;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;

@WebServlet("/database/ex02/insert")
public class Ex02InsertController extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
//		response.setContentType("text/plain");
//		
//		PrintWriter out = response.getWriter();
		
		// 이름 생년월일 이메일 을 전달받고 해당 데이터를 insert 한다.
		String name = request.getParameter("name");
		String birthday = request.getParameter("birthday");
		String email = request.getParameter("email");
		
		//데이터베이스 접속 및 쿼리수행
		
		MysqlService mysqlService = MysqlService.getInstance();
		mysqlService.connect();
		
		
		String query = "INSERT INTO `new_user`\r\n"
				+ "(`name`, `yyyymmdd`, `email`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE\r\n"
				+ "('" + name +  "',  '" + birthday +"', '" +  email + "', now(), now());";
		
		int count = mysqlService.update(query);//수행 
		
		
		//out.println("수행 결과 : " + count);
		
		mysqlService.disconnect();
		
		// redirect 
		response.sendRedirect("/database/ex02.jsp"); //위에거 주석처리해도됨
		
		
		// input 
		
		
	}
}
