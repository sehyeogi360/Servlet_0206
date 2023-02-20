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
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {//전달받은 값 사이트 주소 와 값 이므로.. Post로 해보기 값이 클수 있다.
		
		// 이름과 주소를 전달 받고 favorite 테이블에 insert 한다.
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
		
		
		
		MysqlService mysqlService= MysqlService.getInstance();
		mysqlService.connect();
		
		String query = "INSERT INTO `site`\r\n"
				+ "(`name`, `url`, `createdAt`, `updatedAt`)\r\n"
				+ "VALUE\r\n"
				+ "('"+ name + "', '" + url + "', now(), now());";// 아까 있던 쿼리 그대로 복붙 후 파라미터로 교체
		
		
		int count = mysqlService.update(query);// 업데이트 쿼리
		
		mysqlService.disconnect();
		
		response.sendRedirect("/database/test02.jsp");//리스폰스 객체로부터 센드리다이렉트 메소드 소환 주소까지 정확히써주기
	}
}
