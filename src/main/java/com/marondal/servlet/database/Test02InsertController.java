package com.marondal.servlet.database;

import java.io.IOException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;

@WebServlet("/database/test02/insert")
public class Test02InsertController extends HttpServlet{

	
	@Override
	public void doGet(HttpServletRequest request,HttpServletResponse response) throws IOException {
		
		String name =  request.getParameter("name");
		String url =  request.getParameter("url");
		
		
		
		MysqlService mysqlService= MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `site`\r\n"
				+ "(`name`, `url`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE\r\n"
				+ "('마론달', 'http://marondal.com', now(), now()),\r\n"
				+ "('구글', 'https://google.com', now(), now()),\r\n"
				+ "('네이버', 'https://naver.com', now(), now()),\r\n"
				+ "('다음', 'https://daum.net', now(), now()\r\n"
				+ ");";
		
		int count = mysqlService.update(query);
		
		mysqlService.disconnect();
		
		response.sendRedirect("/database/test02.jsp");
	}
}
